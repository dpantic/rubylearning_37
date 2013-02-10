class ClassAccess
def m1
end
public :m1
protected :m2, :m3
private :m4, :m5
def m2
end
private
 def m3
end
end
ca = ClassAccess.new
ca.m1

