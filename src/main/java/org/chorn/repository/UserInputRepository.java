package org.chorn.repository;

import org.chorn.model.UserInput;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserInputRepository {

    public void saveUserInput(UserInput userInput) {
        Transaction transaction = null;
        try (Session session = new Configuration().configure().buildSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(userInput);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
