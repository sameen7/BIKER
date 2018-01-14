.class public Lcom/google/appinventor/components/runtime/Ev3Commands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Commands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS EV3 robot, with functions to send system or direct commands to EV3 robots."
    docUri = "iot/lego.html#ev3-commands"
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 42
    const-string v0, "Ev3Commands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public GetBatteryCurrent()D
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery current."
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const/4 v2, 0x4

    const-string v4, "cg"

    new-array v5, v11, [Ljava/lang/Object;

    .line 100
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 101
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    .line 95
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 102
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 103
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    array-length v0, v8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 104
    const-string v0, "xf"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 105
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 107
    .end local v9    # "values":[Ljava/lang/Object;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public GetBatteryVoltage()D
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery voltage."
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const/4 v2, 0x4

    const-string v4, "cg"

    new-array v5, v11, [Ljava/lang/Object;

    .line 78
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 79
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 80
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 81
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    array-length v0, v8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 82
    const-string v0, "xf"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 83
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 85
    .end local v9    # "values":[Ljava/lang/Object;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public GetFirmwareBuild()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware build on EV3."
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const/16 v2, 0x64

    const-string v4, "cg"

    new-array v5, v11, [Ljava/lang/Object;

    const/16 v10, 0x7f

    .line 196
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 197
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 198
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 200
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 201
    const-string v0, "xS"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 202
    .local v9, "value":[Ljava/lang/Object;
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .end local v9    # "value":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware version on EV3."
    .end annotation

    .prologue
    const/16 v2, 0x64

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const-string v4, "ccg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v10, 0xa

    .line 171
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 172
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v5, v1

    .line 173
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 174
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 176
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 177
    const-string v0, "xS"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 178
    .local v9, "value":[Ljava/lang/Object;
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .end local v9    # "value":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetHardwareVersion()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the hardware version of EV3."
    .end annotation

    .prologue
    const/16 v2, 0x64

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const-string v4, "ccg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v10, 0x9

    .line 220
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 221
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v5, v1

    .line 222
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 223
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 225
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 226
    const-string v0, "xS"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 227
    .local v9, "value":[Ljava/lang/Object;
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .end local v9    # "value":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetOSBuild()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS build on EV3."
    .end annotation

    .prologue
    const/16 v2, 0x64

    const/4 v0, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "functionName":Ljava/lang/String;
    const-string v4, "ccg"

    new-array v5, v0, [Ljava/lang/Object;

    const/16 v10, 0xc

    .line 146
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 147
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v5, v1

    .line 148
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 149
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 151
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 152
    const-string v0, "xS"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 153
    .local v9, "value":[Ljava/lang/Object;
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v9    # "value":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetOSVersion()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS version on EV3."
    .end annotation

    .prologue
    const/16 v2, 0x64

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "functionName":Ljava/lang/String;
    const/16 v0, -0x7f

    const-string v4, "ccg"

    new-array v5, v10, [Ljava/lang/Object;

    .line 122
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    .line 123
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v5, v1

    .line 124
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 125
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 126
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_0

    .line 127
    const-string v0, "xS"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 128
    .local v9, "value":[Ljava/lang/Object;
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v9    # "value":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KeepAlive(I)V
    .locals 8
    .param p1, "minutes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep the EV3 brick from shutdown for a period of time."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "functionName":Ljava/lang/String;
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_1
    const/16 v0, -0x70

    const-string v4, "c"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p1

    .line 62
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 63
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method
