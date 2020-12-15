<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Data_Vendor extends RestController {
    public function __construct(){
        parent::__construct();
        $this->load->model('model_vendor', 'dtb');
    }
    public function index_get(){
        $list = $this->dtb->get();
        $this->response(['status'=>true,'data'=>$list],RestController::HTTP_OK);
    }
    public function index_post(){
        $data = [
            'id_vendor' => $this->post('id_vendor'),
            'nama_vendor' => $this->post('nama_vendor'),
            'alamat_vendor' => $this->post('alamat_vendor'), 
            'no_telp' => $this->post('no_telp'),
            'id_wo' => $this->post('id_wo'),
            'nama_wo' => $this->post('nama_wo'),
            'nama_jenis' => $this->post('nama_jenis')
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
            'id_vendor' => $this->put('id_vendor'),
            'nama_vendor' => $this->put('nama_vendor'),
            'alamat_vendor' => $this->put('alamat_vendor'), 
            'no_telp' => $this->put('no_telp'),
            'id_wo' => $this->put('id_wo'),
            'nama_wo' => $this->put('nama_wo'),
            'nama_jenis' => $this->put('nama_jenis')
        ];
        $id = $this->put('id_vendor');
        $update = $this->dtb->update($id,$data);
        if($update['status']){
            $this->response(['status' => true, 'msg' => $update['data']. ' Data berhasil diubah'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $update['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
    public function index_delete(){
        $id = $this->delete('id_vendor');
        $delete = $this->dtb->delete($id);
        if($delete['status']){
            $this->response(['status' => true, 'msg' => $id. ' Data berhasil dihapus'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $delete['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
}
?>