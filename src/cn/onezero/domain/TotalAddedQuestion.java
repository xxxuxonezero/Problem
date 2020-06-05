package cn.onezero.domain;

public class TotalAddedQuestion {
    int type_id;
    String type_name;
    int count;

    @Override
    public String toString() {
        return "TotalAddedQuestion{" +
                "type_id=" + type_id +
                ", type_name='" + type_name + '\'' +
                ", count=" + count +
                '}';
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
