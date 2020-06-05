package cn.onezero.domain;

/**
 * 选择题
 */
public class QuestionChoice {
    private Integer q_id;
    private String Question;
    private String OptionA;
    private String OptionB;
    private String OptionC;
    private String OptionD;
    private String Answer;
    private Integer course_id;
    private String img_PathQ;
    private String img_PathA;
    private Integer user_id;
    private Boolean visit;
    private Integer type_id;
    private Boolean collection;

    public Boolean getCollection() {
        return collection;
    }

    public void setCollection(Boolean collection) {
        this.collection = collection;
    }

    public Integer getType_id() {
        return type_id;
    }

    public void setType_id(Integer type_id) {
        this.type_id = type_id;
    }

    @Override
    public String toString() {
        return "QuestionChoice{" +
                "q_id=" + q_id +
                ", Question='" + Question + '\'' +
                ", OptionA='" + OptionA + '\'' +
                ", OptionB='" + OptionB + '\'' +
                ", OptionC='" + OptionC + '\'' +
                ", OptionD='" + OptionD + '\'' +
                ", Answer='" + Answer + '\'' +
                ", course_id=" + course_id +
                ", img_PathQ='" + img_PathQ + '\'' +
                ", img_PathA='" + img_PathA + '\'' +
                ", user_id=" + user_id +
                ", visit=" + visit +
                '}';
    }

    public Boolean getVisit() {
        return visit;
    }

    public void setVisit(Boolean visit) {
        this.visit = visit;
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

    public String getOptionA() {
        return OptionA;
    }

    public void setOptionA(String optionA) {
        OptionA = optionA;
    }

    public String getOptionB() {
        return OptionB;
    }

    public void setOptionB(String optionB) {
        OptionB = optionB;
    }

    public String getOptionC() {
        return OptionC;
    }

    public void setOptionC(String optionC) {
        OptionC = optionC;
    }

    public String getOptionD() {
        return OptionD;
    }

    public void setOptionD(String optionD) {
        OptionD = optionD;
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

    public String getImg_PathQ() {
        return img_PathQ;
    }

    public void setImg_PathQ(String img_PathQ) {
        this.img_PathQ = img_PathQ;
    }

    public String getImg_PathA() {
        return img_PathA;
    }

    public void setImg_PathA(String img_PathA) {
        this.img_PathA = img_PathA;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
}
