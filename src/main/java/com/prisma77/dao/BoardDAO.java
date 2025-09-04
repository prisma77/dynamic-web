package com.prisma77.dao;

import com.prisma77.config.MyBatisUtil;
import com.prisma77.dto.BoardDTO;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class BoardDAO {
    public List<BoardDTO> getAllBoards() {
        try (SqlSession s = MyBatisUtil.getSqlSessionFactory().openSession()) {
            return s.selectList("com.prisma77.dao.BoardDAO.getAllBoards");
        }
    }

    public BoardDTO getBoardById(int id) {
        try (SqlSession s = MyBatisUtil.getSqlSessionFactory().openSession()) {
            return s.selectOne("com.prisma77.dao.BoardDAO.getBoardById", id);
        }
    }
    public int insertBoard(BoardDTO b) {
        try (SqlSession s = MyBatisUtil.getSqlSessionFactory().openSession(true)) {
            return s.insert("com.prisma77.dao.BoardDAO.insertBoard", b);
        }
    }
    public int updateBoard(BoardDTO b) {
        try (SqlSession s = MyBatisUtil.getSqlSessionFactory().openSession(true)) {
            return s.update("com.prisma77.dao.BoardDAO.updateBoard", b);
        }
    }
    public int deleteBoard(int id) {
        try (SqlSession s = MyBatisUtil.getSqlSessionFactory().openSession(true)) {
            return s.delete("com.prisma77.dao.BoardDAO.deleteBoard", id);
        }
    }
}