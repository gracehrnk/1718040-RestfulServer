<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_WO extends CI_Model {
    public function __construct(){
        parent::__construct();
    }
    public function get(){
        return $this->db->get('tb_wo')->result();
    }
    public function add($data){
        try{
            $this->db->insert('tb_wo',$data);
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
            $this->db->update('tb_wo',$data,['id_wo' => $id]);
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
            $this->db->delete('tb_wo',['id_wo' => $id]);
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