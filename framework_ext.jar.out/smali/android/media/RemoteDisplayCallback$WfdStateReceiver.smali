.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, action:Ljava/lang/String;
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intent recieved "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v12, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 156
    const-string v12, "Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, strSessionControl:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v12, "terminate"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 158
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 159
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    invoke-interface {v12}, Landroid/media/RemoteDisplayCallback$Listener;->onHDMIConnected()V

    .line 285
    .end local v10           #strSessionControl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v10       #strSessionControl:Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v13, "res"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #setter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12, v13}, Landroid/media/RemoteDisplayCallback;->access$202(Landroid/media/RemoteDisplayCallback;I)I

    .line 165
    const-string v12, "3D"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, str3d:Ljava/lang/String;
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd resolution from app:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v14}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 3d:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, dim_mode:I
    if-eqz v8, :cond_2

    const-string v12, "Yes"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 169
    const/4 v3, 0x1

    .line 176
    :goto_1
    const/4 v11, 0x0

    .line 177
    .local v11, width:I
    const/4 v5, 0x0

    .line 179
    .local v5, height:I
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    .line 180
    const/16 v11, 0x280

    .line 181
    const/16 v5, 0x1e0

    .line 205
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, strChangeParam:Ljava/lang/String;
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "strChangeParam:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v12, 0x6

    invoke-static {v12, v9}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 171
    .end local v5           #height:I
    .end local v9           #strChangeParam:Ljava/lang/String;
    .end local v11           #width:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 182
    .restart local v5       #height:I
    .restart local v11       #width:I
    :cond_3
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_4

    .line 183
    const/16 v11, 0x2d0

    .line 184
    const/16 v5, 0x1e0

    goto :goto_2

    .line 185
    :cond_4
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 186
    const/16 v11, 0x2d0

    .line 187
    const/16 v5, 0x240

    goto :goto_2

    .line 188
    :cond_5
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_6

    .line 189
    const/16 v11, 0x500

    .line 190
    const/16 v5, 0x2d0

    goto :goto_2

    .line 191
    :cond_6
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_7

    .line 192
    const/16 v11, 0x780

    .line 193
    const/16 v5, 0x438

    goto/16 :goto_2

    .line 194
    :cond_7
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mCurrentResln:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_8

    .line 195
    const/16 v11, 0x320

    .line 196
    const/16 v5, 0x258

    goto/16 :goto_2

    .line 199
    :cond_8
    const/16 v11, 0x500

    .line 200
    const/16 v5, 0x2d0

    goto/16 :goto_2

    .line 209
    .end local v3           #dim_mode:I
    .end local v5           #height:I
    .end local v8           #str3d:Ljava/lang/String;
    .end local v10           #strSessionControl:Ljava/lang/String;
    .end local v11           #width:I
    :cond_9
    const-string v12, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 210
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "send command: UpdateUserInput >> 1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 212
    :cond_a
    const-string v12, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 213
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "send command: UpdateUserInput >> 0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :cond_b
    const-string v12, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 220
    const/4 v12, 0x1

    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    .line 221
    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 222
    :cond_c
    const-string v12, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 227
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    .line 228
    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_d
    const-string v12, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 231
    const-string v12, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, audio_type:I
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v13, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #setter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v12, v13}, Landroid/media/RemoteDisplayCallback;->access$402(Landroid/media/RemoteDisplayCallback;I)I

    .line 236
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v12, 0x3

    if-ne v2, v12, :cond_0

    .line 237
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send command: curr stream vol:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v14}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v12, 0x3

    iget-object v13, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    #getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v13}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v2           #audio_type:I
    :cond_e
    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 241
    const-string v12, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 242
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_0

    .line 244
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 246
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 247
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    invoke-interface {v12}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 251
    :cond_f
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 252
    const-string v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 253
    .local v7, state:I
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "MODE : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v12, 0x2

    if-ne v7, v12, :cond_0

    .line 256
    :try_start_0
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "Thead on"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-wide/16 v12, 0x7d0

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 258
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 260
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "isBluetoothA2dpOn()"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 262
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    invoke-interface {v12}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v4

    .line 266
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "Thread exception!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v7           #state:I
    :cond_10
    const-string v12, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 270
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 272
    .local v6, mHDMIConnected:Z
    if-eqz v6, :cond_0

    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 273
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v12

    invoke-interface {v12}, Landroid/media/RemoteDisplayCallback$Listener;->onHDMIConnected()V

    goto/16 :goto_0

    .line 275
    .end local v6           #mHDMIConnected:Z
    :cond_11
    const-string v12, "android.intent.action.WFD_PAUSE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 276
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "WFD TEST Pause"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 278
    :cond_12
    const-string v12, "android.intent.action.WFD_RESUME"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 279
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "WFD TEST Resume"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 281
    :cond_13
    const-string v12, "android.intent.action.WFD_STOP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 282
    const-string v12, "RemoteDisplayCallback"

    const-string v13, "WFD TEST Stop"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/16 v12, 0x16

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    goto/16 :goto_0
.end method
