.class public Lcom/samsung/wfd/WFDNative;
.super Ljava/lang/Object;
.source "WFDNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WFD.Native.java"

.field public static launched_from_app:I

.field private static mAudioType:I

.field private static mContext:Landroid/content/Context;

.field private static mDongleVer:Ljava/lang/String;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRemoteIP_4th:I

.field private static mUpdateURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 32
    sput v1, Lcom/samsung/wfd/WFDNative;->mRemoteIP_4th:I

    .line 33
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 35
    sput v1, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 36
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 37
    sput v1, Lcom/samsung/wfd/WFDNative;->launched_from_app:I

    .line 311
    const-string v0, "uibc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 312
    const-string v0, "WFD_ENGINE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WFDGetStatus()Z
.end method

.method public static native WFDGetSubtitleStatus()Z
.end method

.method public static native WFDGetSuspendStatus()Z
.end method

.method public static native WFDPostSubtitle(Ljava/lang/String;I)Z
.end method

.method public static native WFDPostSuspend(Ljava/lang/String;)Z
.end method

.method public static native WFDSetSubtitleStatus(Z)Z
.end method

.method public static native WFDSetSuspendStatus(Z)Z
.end method

.method public static callbackFromNative(IILjava/lang/Object;)V
    .locals 19
    .parameter "msg"
    .parameter "data"
    .parameter "ext_data"

    .prologue
    .line 67
    const-string v14, "WFD.Native.java"

    const-string v15, "callbackFromNative: %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 281
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local p2
    :sswitch_0
    sget v14, Lcom/samsung/wfd/WFDNative;->launched_from_app:I

    if-nez v14, :cond_0

    .line 73
    if-eqz p2, :cond_0

    .line 75
    const-string v15, "WFD.Native.java"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v14, p2

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 77
    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, info:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 79
    .local v12, length:I
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 80
    const/4 v14, 0x4

    invoke-virtual {v1, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 81
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    const-string v15, "AA00"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 82
    const/4 v14, 0x0

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 84
    :cond_1
    const-string v14, "WFD.Native.java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ver:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v1           #info:Ljava/lang/String;
    .end local v12           #length:I
    :sswitch_1
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD play success"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v14, 0x780

    sput v14, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 97
    if-eqz p2, :cond_3

    move-object/from16 v14, p2

    .line 98
    check-cast v14, Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 99
    const/16 v14, 0x1000

    sput v14, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 101
    :cond_2
    const-string v14, "WFD.Native.java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "audio type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    const-string v14, "WFD.Native.java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 108
    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, intent_connected:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v14, "count"

    sget v15, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 120
    const-string v14, "IP"

    sget-object v15, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v14, 0x0

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 124
    :cond_4
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 125
    const-string v14, "URL"

    sget-object v15, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v14, 0x0

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 129
    :cond_5
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 130
    const-string v14, "VER"

    sget-object v15, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/4 v14, 0x0

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 134
    :cond_6
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    const/4 v14, 0x1

    sget v15, Lcom/samsung/wfd/WFDNative;->launched_from_app:I

    if-ne v14, v15, :cond_8

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, intent_audio:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v2, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-string v14, "state"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v14, "resBitMask"

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v14, "curRes"

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v14, "count"

    sget v15, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string v14, "WFD.Native.java"

    const-string v15, "broadcastWfdSessionInfo << to AllShare!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v13, mAllShareCastState:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const-string v14, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 153
    const-string v14, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    sget-object v15, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_7
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 159
    .end local v2           #intent_audio:Landroid/content/Intent;
    .end local v13           #mAllShareCastState:Landroid/content/Intent;
    :cond_8
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD client connected broadcast sent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    .end local v5           #intent_connected:Landroid/content/Intent;
    .restart local p2
    :sswitch_2
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD disconnected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 166
    new-instance v9, Landroid/content/Intent;

    const-string v14, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, intent_terminated:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD client disconnected broadcast sent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v14, 0x1

    sget v15, Lcom/samsung/wfd/WFDNative;->launched_from_app:I

    if-ne v14, v15, :cond_0

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v2       #intent_audio:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v2, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    const-string v14, "state"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v14, "resBitMask"

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v14, "curRes"

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v14, "count"

    const/16 v15, 0x780

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 182
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v13       #mAllShareCastState:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    const-string v14, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 192
    .end local v2           #intent_audio:Landroid/content/Intent;
    .end local v9           #intent_terminated:Landroid/content/Intent;
    .end local v13           #mAllShareCastState:Landroid/content/Intent;
    :sswitch_3
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD resolution :0x%x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 195
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v8, intent_resolution:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v14, "res"

    move/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD resolution broadcast sent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v8           #intent_resolution:Landroid/content/Intent;
    :sswitch_4
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD param changed notification"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 207
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, intent_chage_param:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD param changed broadcast sent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v3           #intent_chage_param:Landroid/content/Intent;
    :sswitch_5
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD transport mode changed notification"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 218
    const-string v14, "WFD.Native.java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "intent_chage_transport_mode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v4, intent_chage_transport_mode:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const-string v14, "CONNECTION_MODE"

    move/from16 v0, p1

    invoke-virtual {v4, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 228
    .end local v4           #intent_chage_transport_mode:Landroid/content/Intent;
    :sswitch_6
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD HDCP Connection Info notification"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 231
    const-string v14, "WFD.Native.java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "intent_hdcp_connection Info : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v7, intent_hdcp_info:Landroid/content/Intent;
    const-string v14, "cause"

    move/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 240
    .end local v7           #intent_hdcp_info:Landroid/content/Intent;
    :sswitch_7
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 242
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, intent_error_param:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string v14, "cause"

    move/from16 v0, p1

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD noti to App - Error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    .end local v6           #intent_error_param:Landroid/content/Intent;
    :sswitch_8
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v14, p2

    .line 253
    check-cast v14, Ljava/lang/String;

    sput-object v14, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 255
    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v10, intent_url_param:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    const-string v14, "URL"

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v10, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD noti to App - Dongle update URL"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v10           #intent_url_param:Landroid/content/Intent;
    .restart local p2
    :sswitch_9
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 265
    const-string v14, "WFD.Native.java"

    const-string v15, "WFD noti to App - weak network connection.."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v11, Landroid/content/Intent;

    const-string v14, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v11, intent_weak_network:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v11, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    sget-object v14, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0x14 -> :sswitch_8
        0x1e -> :sswitch_9
    .end sparse-switch
.end method

.method public static native changeParams(IIII)Z
.end method

.method public static native getEngineStatus()I
.end method

.method public static native handleDown(I[I[I[I)V
.end method

.method public static native handleMove(I[I[I[I)V
.end method

.method public static native handleUp(I[I[I[I)V
.end method

.method public static native invokeStreaming(III)Z
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static native keyDown(II)V
.end method

.method public static native keyUp(II)V
.end method

.method public static native pause()Z
.end method

.method public static native resume()Z
.end method

.method public static native revokeStreaming()Z
.end method

.method public static native sendStreamMusicVolume(I)Z
.end method

.method public static native sendUpdateUserInput(I)Z
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    sput-object p0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static native setRtpTransport(I)Z
.end method

.method public static native start()Z
.end method

.method public static start(IIII)Z
    .locals 3
    .parameter "use_hdcp"
    .parameter "rtsp_port"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 60
    const-string v0, "WFD.Native.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/samsung/wfd/WFDNative;->launched_from_app:I

    .line 62
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->start()Z

    move-result v0

    return v0
.end method

.method public static native startUIBC(Ljava/lang/Object;)V
.end method

.method public static native stop()Z
.end method

.method public static native stopUIBC()V
.end method
