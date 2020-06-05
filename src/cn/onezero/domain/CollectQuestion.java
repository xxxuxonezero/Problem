package cn.onezero.domain;

public class CollectQuestion {
    private Integer q_id;
    private Integer type_id;

    @Override
    public String toString() {
        return "CollectQuestion{" +
                "q_id=" + q_id +
                ", type_id=" + type_id +
                '}';
    }

    public Integer getQ_id() {
        return q_id;
    }

    public void setQ_id(Integer q_id) {
        this.q_id = q_id;
    }

    public Integer getType_id() {
        return type_id;
    }

    public void setType_id(Integer type_id) {
        this.type_id = type_id;
    }

}
