.class public Lcom/pzoom/biker/Screen1$frame;
.super Lgnu/expr/ModuleBody;
.source "Screen1.yail"


# instance fields
.field $main:Lcom/pzoom/biker/Screen1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 32
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 10344
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10248
    :pswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda3()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda4()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda6()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda7()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda8()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda9()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda10()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda11()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda12()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 17
    :pswitch_d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda15()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda14()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda17()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda18()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda19()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_12
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda21()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda20()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda22()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda23()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_16
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda25()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda24()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda26()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_19
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda27()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_1a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda29()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda28()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1c
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda30()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 25
    :pswitch_1d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda32()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda31()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda33()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 26
    :pswitch_20
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda35()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_21
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda34()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda36()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 27
    :pswitch_23
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda38()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_24
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda37()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_25
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda39()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 28
    :pswitch_26
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda41()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_27
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda40()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_28
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda42()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 29
    :pswitch_29
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda44()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda43()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda45()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 30
    :pswitch_2c
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda47()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda46()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda48()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 31
    :pswitch_2f
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda50()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_30
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda49()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_31
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda51()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 32
    :pswitch_32
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda53()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_33
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda52()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_34
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda54()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_35
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->Screen1$Initialize()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_36
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda55()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_37
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda56()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_38
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda57()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_39
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda58()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda59()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda60()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3c
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p1$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3d
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p1$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3e
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda61()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3f
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda62()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_40
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p2$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_41
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p2$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_42
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda63()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_43
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda64()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_44
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda65()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_45
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda66()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_46
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda67()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_47
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda68()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_48
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda69()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_49
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda70()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4a
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p3$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4b
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p3$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4c
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda71()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda72()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4e
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p4$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4f
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p4$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_50
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda73()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_51
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda74()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_52
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda75()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_53
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda76()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_54
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p5$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_55
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p5$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_56
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda77()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_57
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda78()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_58
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p6$LongClick()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_59
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->p6$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda79()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda80()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5c
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda81()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda82()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5e
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->delete$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5f
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda83()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_60
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda84()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_61
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda85()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_62
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda86()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_63
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->clear$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_64
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda87()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_65
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda88()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_66
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->photo$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_67
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda89()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_68
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda90()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_69
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->pick$AfterPicking()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda91()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6b
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda92()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6c
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->submit$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6d
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda93()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6e
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda94()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6f
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->cancel$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_70
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda95()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_71
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda96()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_72
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->open$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_73
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda97()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_74
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda98()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_75
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->cycle$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_76
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda99()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_77
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda100()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_78
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->chart$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_79
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda101()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7a
    invoke-static {}, Lcom/pzoom/biker/Screen1;->lambda102()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7b
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0}, Lcom/pzoom/biker/Screen1;->about$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_0
        :pswitch_44
        :pswitch_45
        :pswitch_0
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_0
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 10184
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10102
    :sswitch_0
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10115
    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10121
    :sswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 10176
    :sswitch_3
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10181
    :sswitch_4
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->sendError(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10184
    :sswitch_5
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :sswitch_6
    invoke-static {p2}, Lcom/pzoom/biker/Screen1;->lambda13(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-static {p2}, Lcom/pzoom/biker/Screen1;->lambda16(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->slider$PositionChanged(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/Screen1;->camera$AfterPicture(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10115
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10121
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x1a -> :sswitch_6
        0x1c -> :sswitch_7
        0x57 -> :sswitch_8
        0x82 -> :sswitch_9
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 10240
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10111
    :pswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10115
    :pswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10129
    :pswitch_3
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10150
    :pswitch_4
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10166
    :pswitch_5
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10240
    :pswitch_6
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/Screen1;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10111
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10115
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10129
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-global-var-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2, p3, p4}, Lcom/pzoom/biker/Screen1;->canva$Touched(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 10202
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10157
    :sswitch_0
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pzoom/biker/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10202
    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/Screen1$frame;->$main:Lcom/pzoom/biker/Screen1;

    :try_start_0
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    check-cast p5, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pzoom/biker/Screen1;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10203
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10204
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10205
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 10096
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line 4294967295
    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_7
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_9
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_11
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_12
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_13
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_14
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_16
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_17
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_18
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_19
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_1a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_1b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_1c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_1d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_1e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_1f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_20
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_21
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_22
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_23
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_24
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_25
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_26
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_27
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_28
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_29
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_2f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_30
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_31
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_32
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_33
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_34
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_35
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_36
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_37
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_38
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_39
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_3f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_40
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_41
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_42
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_43
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_44
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_45
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_46
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_47
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_48
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_49
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 32
    :pswitch_4a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_4b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_4c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 31
    :pswitch_4d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_4e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_4f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 30
    :pswitch_50
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_51
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_52
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 29
    :pswitch_53
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_54
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_55
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 28
    :pswitch_56
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_57
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_58
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 27
    :pswitch_59
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_5a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_5b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 26
    :pswitch_5c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_5d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_5e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 25
    :pswitch_5f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_60
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_61
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 24
    :pswitch_62
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_63
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_64
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_65
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 22
    :pswitch_66
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_67
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_68
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_69
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 20
    :pswitch_6a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_6b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_6c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_6d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_6e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 17
    :pswitch_6f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_70
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_71
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_72
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_73
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_74
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_75
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_76
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_77
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_78
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_79
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 10000
    :pswitch_7a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 10096
    :pswitch_7b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_0
        :pswitch_70
        :pswitch_0
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_0

    .line 10102
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line 4294967295
    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10097
    :sswitch_4
    instance-of v2, p2, Lcom/pzoom/biker/Screen1;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10098
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10099
    :sswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10100
    :sswitch_7
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10101
    :sswitch_8
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10102
    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_8
        0x5 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0x1a -> :sswitch_3
        0x1c -> :sswitch_2
        0x57 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 10111
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 10240
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10166
    :pswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10150
    :pswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10129
    :pswitch_4
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10115
    :pswitch_5
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10111
    :pswitch_6
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 10157
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 10202
    :goto_0
    return v0

    :sswitch_0
    instance-of v1, p2, Lcom/pzoom/biker/Screen1;

    if-nez v1, :cond_0

    const v0, -0xbffff

    goto :goto_0

    :cond_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v1, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v1, :cond_1

    const v0, -0xbfffe

    goto :goto_0

    :cond_1
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v1, p4, Ljava/lang/String;

    if-nez v1, :cond_2

    const v0, -0xbfffd

    goto :goto_0

    :cond_2
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v1, p5, Ljava/lang/String;

    if-nez v1, :cond_3

    const v0, -0xbfffc

    goto :goto_0

    :cond_3
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10157
    :sswitch_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
