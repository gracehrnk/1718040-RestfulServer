<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Konsumen extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    public function get(){
        return $this->db->get('tb_konsumen')->result();
    }
    public function add($data){
        try{
            $this->db->insert('tb_konsumen',$data);
            $error = $this->db->error();
            if(!empty($error['code'])){
                throw new Execption('Terjadi Kesalahan : '.$error['message']);
                return false;
            }
            return['status'=> true, 'data'=>$this->db->affected_rows()];
        }catch(Exception $ex){
            return['status'=>false, 'msg' => $ex->getMessage()];
        }
    }
    public function update($id,$data){
        try{
            $this->db->update('tb_konsumen',$data,['id_konsumen' => $id]);
            $error = $this->db->error();
            if(!empty($error['code'])){
                throw new Execption('Terjadi Kesalahan : '.$error['message']);
                return false;
            }
            return['status'=> true, 'data'=>$this->db->affected_rows()];
        }catch(Exception $ex){
            return['status'=>false, 'msg' => $ex->getMessage()];
        }
    }
    public function delete($id){
        try{
            $this->db->delete('tb_konsumen',['id_konsumen' => $id]);
            $error = $this->db->error();
            if(!empty($error['code'])){
                throw new Execption('Terjadi Kesalahan : '.$error['message']);
                return false;
            }
            return['status'=> true, 'data'=>$this->db->affected_rows()];
        }catch(Exception $ex){
            return['status'=>false, 'msg' => $ex->getMessage()];
        }
    }
}
?>