<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Data_Konsumen extends RestController {
    public function __construct(){
        parent::__construct();
        $this->load->model('model_konsumen', 'dtb');
    }
    public function index_get(){
        $list = $this->dtb->get();
        $this->response(['status'=>true,'data'=>$list],RestController::HTTP_OK);
    }
    public function index_post(){
        $data = [
            'id_konsumen' => $this->post('id_konsumen'),
            'nama_konsumen' => $this->post('nama_konsumen'),
            'layanan' => $this->post('layanan'), 
            'id_vendor' => $this->post('id_vendor'),
            'nama_vendor' => $this->post('nama_vendor'),
            'tgl_pemesanan' => $this->post('tgl_pemesanan')
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
            'id_konsumen' => $this->put('id_konsumen'),
            'nama_konsumen' => $this->put('nama_konsumen'),
            'layanan' => $this->put('layanan'), 
            'id_vendor' => $this->put('id_vendor'),
            'nama_vendor' => $this->put('nama_vendor'),
            'tgl_pemesanan' => $this->put('tgl_pemesanan')
        ];
        $id = $this->put('id_konsumen');
        $update = $this->dtb->update($id,$data);
        if($update['status']){
            $this->response(['status' => true, 'msg' => $update['data']. ' Data berhasil diubah'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $update['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
    public function index_delete(){
        $id = $this->delete('id_konsumen');
        $delete = $this->dtb->delete($id);
        if($delete['status']){
            $this->response(['status' => true, 'msg' => $id. ' Data berhasil dihapus'], RestController::HTTP_OK);
        }else{
            $this->response(['status' => false, 'msg' => $delete['msg']], RestController::HTTP_INTERNAL_ERROR);
        }     
    }
}
?>