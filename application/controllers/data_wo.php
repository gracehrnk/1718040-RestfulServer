<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Data_WO extends RestController {
    public function __construct(){
        parent::__construct();
        $this->load->model('model_wo', 'dtb');
    }
    public function index_get(){
        $list = $this->dtb->get();
        $this->response(['status'=>true,'data'=>$list],RestController::HTTP_OK);
    }
    public function index_post(){
        $data = [
        'id_wo' => $this->post('id_wo'),
        'nama_wo' => $this->post('nama_wo'),
        'alamat_wo' => $this->post('alamat_wo'), 
        'no_telp' => $this->post('no_telp'),
        'layanan' => $this->post('layanan'),
        'kab_kota' => $this->post('kab_kota')
        ];
        $simpan = $this->dtb->add($data);
        if($simpan['status']){
            $this->response(['status' => true, 'msg' => $simpan['data']. ' Data berhasil ditambahkan'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $simpan['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
    public function index_put(){
        $data = [
        'id_wo' => $this->put('id_wo'),
        'nama_wo' => $this->put('nama_wo'),
        'alamat_wo' => $this->put('alamat_wo'), 
        'no_telp' => $this->put('no_telp'),
        'layanan' => $this->put('layanan'),
        'kab_kota' => $this->put('kab_kota')
        ];
        $id = $this->put('id_wo');
        $update = $this->dtb->update($id,$data);
        if($update['status']){
            $this->response(['status' => true, 'msg' => $update['data']. ' Data berhasil diubah'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $update['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
    public function index_delete(){
        $id = $this->delete('id_wo');
        $delete = $this->dtb->delete($id);
        if($delete['status']){
            $this->response(['status' => true, 'msg' => $id. ' Data berhasil dihapus'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $delete['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
}
?>