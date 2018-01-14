.class public Lcom/pzoom/biker/loacter$frame;
.super Lgnu/expr/ModuleBody;
.source "loacter.yail"


# instance fields
.field $main:Lcom/pzoom/biker/loacter;


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

    .line 22
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 10344
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10248
    :pswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda3()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda5()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda4()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda6()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_8
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda9()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda8()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda10()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda11()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda12()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda14()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda13()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda15()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda16()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda17()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda18()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda19()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_14
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda21()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda20()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda22()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda23()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda24()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_19
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda26()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda25()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda27()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 22
    :pswitch_1c
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda29()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda28()Lgnu/mapping/Procedure;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda30()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda31()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_20
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda32()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_21
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda33()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda34()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_23
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda35()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_24
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda36()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_25
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->loacter$Initialize()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_26
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda37()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_27
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda38()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_28
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda39()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_29
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda40()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda41()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda42()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2c
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda43()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda44()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda45()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda46()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_30
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda47()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_31
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda48()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_32
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda49()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_33
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda50()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_34
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda51()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_35
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda52()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_36
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda53()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_37
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda54()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_38
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda55()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_39
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda56()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda57()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda58()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3c
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda59()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda60()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda61()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda62()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_40
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda63()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_41
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda64()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_42
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda65()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_43
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda66()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_44
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda67()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_45
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda68()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_46
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda69()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_47
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda70()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_48
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda71()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_49
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda72()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda73()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda74()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4c
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda75()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda76()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda77()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda78()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_50
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda79()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_51
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda80()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_52
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda81()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_53
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda82()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_54
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda83()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_55
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda84()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_56
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda85()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_57
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda86()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_58
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda87()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_59
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda88()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5a
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda89()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5b
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda90()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5c
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->speech_get$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5d
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda91()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5e
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda92()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5f
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda93()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_60
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda94()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_61
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->memo_submit$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_62
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda95()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_63
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda96()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_64
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda97()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_65
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda98()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_66
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->home$Click()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_67
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda99()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_68
    invoke-static {}, Lcom/pzoom/biker/loacter;->lambda100()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_69
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0}, Lcom/pzoom/biker/loacter;->share$Click()Ljava/lang/Object;

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
        :pswitch_c
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
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_0
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_41
        :pswitch_0
        :pswitch_42
        :pswitch_43
        :pswitch_0
        :pswitch_44
        :pswitch_45
        :pswitch_0
        :pswitch_46
        :pswitch_47
        :pswitch_0
        :pswitch_48
        :pswitch_49
        :pswitch_0
        :pswitch_4a
        :pswitch_4b
        :pswitch_0
        :pswitch_4c
        :pswitch_4d
        :pswitch_0
        :pswitch_4e
        :pswitch_4f
        :pswitch_0
        :pswitch_50
        :pswitch_51
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_62
        :pswitch_63
        :pswitch_0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
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
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10115
    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10121
    :sswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 10176
    :sswitch_3
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10181
    :sswitch_4
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->sendError(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10184
    :sswitch_5
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->Slider1$PositionChanged(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->target$AfterSelecting(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->action$AfterSelecting(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->SR$AfterGettingText(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2}, Lcom/pzoom/biker/loacter;->Screenshot$AfterScreenshot(Ljava/lang/Object;)Ljava/lang/Object;

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
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x3e -> :sswitch_6
        0x43 -> :sswitch_7
        0x46 -> :sswitch_8
        0x80 -> :sswitch_9
        0x8a -> :sswitch_a
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 10240
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10111
    :sswitch_0
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10115
    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10129
    :sswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10150
    :sswitch_3
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10166
    :sswitch_4
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10240
    :sswitch_5
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3}, Lcom/pzoom/biker/loacter;->line_painter$Touched(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x9 -> :sswitch_4
        0xe -> :sswitch_5
        0x6e -> :sswitch_6
    .end sparse-switch
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
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pzoom/biker/loacter;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 10202
    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

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

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pzoom/biker/loacter;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pzoom/biker/loacter;->LocationSensor1$LocationChanged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_1
        0x83 -> :sswitch_2
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite2$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite1$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite5$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite6$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite7$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite8$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite9$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite10$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite3$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->ImageSprite4$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->bike$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/pzoom/biker/loacter$frame;->$main:Lcom/pzoom/biker/loacter;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual/range {v0 .. v6}, Lcom/pzoom/biker/loacter;->line_painter$Dragged(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x50 -> :sswitch_1
        0x53 -> :sswitch_2
        0x56 -> :sswitch_3
        0x59 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5f -> :sswitch_6
        0x62 -> :sswitch_7
        0x65 -> :sswitch_8
        0x68 -> :sswitch_9
        0x6b -> :sswitch_a
        0x6f -> :sswitch_b
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

    :pswitch_4d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 22
    :pswitch_4e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_4f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_50
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 21
    :pswitch_51
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_52
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

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

    .line 18
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

    :pswitch_5c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 13
    :pswitch_5d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_5e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

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

    .line 10
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

    .line 8
    :pswitch_66
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    :pswitch_67
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 10000
    :pswitch_68
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 10096
    :pswitch_69
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0xf
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
        :pswitch_0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_0
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
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

    :sswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10097
    :sswitch_5
    instance-of v2, p2, Lcom/pzoom/biker/loacter;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10098
    :sswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10099
    :sswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10100
    :sswitch_8
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
    :sswitch_9
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
    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x5 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_5
        0x3e -> :sswitch_4
        0x43 -> :sswitch_3
        0x46 -> :sswitch_2
        0x80 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_0

    .line 10111
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 10240
    :goto_0
    return v0

    .line 4294967295
    :sswitch_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10240
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10166
    :sswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10150
    :sswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10129
    :sswitch_4
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
    :sswitch_5
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
    :sswitch_6
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
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x9 -> :sswitch_2
        0xe -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
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

    .line 4294967295
    :sswitch_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 10202
    :sswitch_1
    instance-of v1, p2, Lcom/pzoom/biker/loacter;

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
    :sswitch_2
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0xd -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_b
        0x50 -> :sswitch_a
        0x53 -> :sswitch_9
        0x56 -> :sswitch_8
        0x59 -> :sswitch_7
        0x5c -> :sswitch_6
        0x5f -> :sswitch_5
        0x62 -> :sswitch_4
        0x65 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6b -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch
.end method
