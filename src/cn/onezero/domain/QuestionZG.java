package cn.onezero.domain;

/**
 *建立一个描述主观题的类
 */
public class QuestionZG {
    private Integer q_id;
    private String Question;
    private String Answer;
    private Integer course_id;
    private Integer type_id;
    private String img_pathQ;
    private String img_pathA;
    private Integer user_id;
    private Boolean visit;
    private Boolean collection;

    public Boolean getCollection() {
        return collection;
    }

    public void setCollection(Boolean collection) {
        this.collection = collection;
    }

    @Override
    public String toString() {
        return "QuestionZG{" +
                "q_id=" + q_id +
                ", Question='" + Question + '\'' +
                ", Answer='" + Answer + '\'' +
                ", course_id=" + course_id +
                ", type_id=" + type_id +
                ", img_pathQ='" + img_pathQ + '\'' +
                ", img_pathA='" + img_pathA + '\'' +
                ", user_id=" + user_id +
                ", visit=" + visit +
                '}';
    }

    public Integer getQ_id() {
        return q_id;
    }

    public void setQ_id(Integer q_id) {
        this.q_id = q_id;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String question) {
        Question = question;
    }

    public String getAnswer() {
        return Answer;
    }

    public void setAnswer(String answer) {
        Answer = answer;
    }

    public Integer getCourse_id() {
        return course_id;
    }

    public void setCourse_id(Integer course_id) {
        this.course_id = course_id;
    }

    public Integer getType_id() {
        return type_id;
    }

    public void setType_id(Integer type_id) {
        this.type_id = type_id;
    }

    public String getImg_pathQ() {
        return img_pathQ;
    }

    public void setImg_pathQ(String img_pathQ) {
        this.img_pathQ = img_pathQ;
    }

    public String getImg_pathA() {
        return img_pathA;
    }

    public void setImg_pathA(String img_pathA) {
        this.img_pathA = img_pathA;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Boolean getVisit() {
        return visit;
    }

    public void setVisit(Boolean visit) {
        this.visit = visit;
    }
}
