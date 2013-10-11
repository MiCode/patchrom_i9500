.class Lcom/samsung/commonimsservice/SamsungAPCommonService$3;
.super Lcom/sec/android/ims/IMSEventListener;
.source "SamsungAPCommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/SamsungAPCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;


# direct methods
.method constructor <init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 196
    if-eqz p6, :cond_0

    .line 197
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PLettering PDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getPLettering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\nHistoryDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nModify Supported : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n isConferenceCall : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getIsConferenceCall()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 201
    :cond_0
    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 202
    packed-switch p2, :pswitch_data_0

    .line 229
    :cond_1
    const/16 v5, 0x8

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-ne p1, v5, :cond_76

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallState listener list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType recieved["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call register len ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 237
    sparse-switch p2, :sswitch_data_0

    .line 1373
    :cond_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "Default case entered"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 214
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    if-eqz v3, :cond_5

    .line 216
    if-eqz p5, :cond_6

    .line 217
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 221
    .local v4, str:Ljava/lang/String;
    :goto_2
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 212
    .end local v4           #str:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :cond_6
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_2

    .line 240
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 242
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    invoke-interface {v3, p3, p4}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onNetworkTransition(II)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 249
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 252
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 253
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 254
    if-eqz v3, :cond_7

    .line 255
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 256
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 251
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 264
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 267
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 268
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 269
    if-eqz v3, :cond_8

    .line 270
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 271
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 266
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 278
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 281
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 282
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 283
    if-eqz v3, :cond_9

    .line 284
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 285
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 280
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 294
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 297
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 298
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 299
    if-eqz v3, :cond_a

    .line 300
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 301
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 296
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 308
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 311
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 312
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 313
    if-eqz v3, :cond_b

    .line 314
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 315
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 310
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 321
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 324
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 325
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 326
    if-eqz v3, :cond_c

    .line 327
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 328
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 323
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 335
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v0

    .line 347
    .local v0, callType:I
    if-eqz p5, :cond_f

    .line 348
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 352
    .restart local v4       #str:Ljava/lang/String;
    :goto_a
    invoke-static {}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$900()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteURI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] CallType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 353
    :cond_d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 354
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 355
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 356
    if-eqz v3, :cond_e

    .line 357
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(IILcom/sec/android/internal/ims/IIMSParams;)I
    invoke-static {v5, p1, p4, p6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;IILcom/sec/android/internal/ims/IIMSParams;)I

    move-result v5

    invoke-interface {v3, p3, v4, p6, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V

    .line 353
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 350
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_f
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto/16 :goto_a

    .line 367
    .end local v0           #callType:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_8
    if-eqz p5, :cond_11

    .line 368
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 372
    .restart local v4       #str:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1102(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I

    .line 373
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1202(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 375
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 376
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 377
    if-eqz v3, :cond_10

    .line 378
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 379
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 374
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 370
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_c

    .line 386
    .end local v4           #str:Ljava/lang/String;
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 388
    if-eqz p5, :cond_13

    .line 389
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 393
    .restart local v4       #str:Ljava/lang/String;
    :goto_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 394
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 395
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 396
    if-eqz v3, :cond_12

    .line 397
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 398
    const-string v5, "Registration Failed"

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 391
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_13
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_e

    .line 406
    .end local v4           #str:Ljava/lang/String;
    :sswitch_a
    if-eqz p5, :cond_15

    .line 407
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 411
    .restart local v4       #str:Ljava/lang/String;
    :goto_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 412
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 413
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 414
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 415
    if-eqz v3, :cond_14

    .line 416
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 417
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 409
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_15
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_10

    .line 425
    .end local v4           #str:Ljava/lang/String;
    :sswitch_b
    if-eqz p5, :cond_17

    .line 426
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 430
    .restart local v4       #str:Ljava/lang/String;
    :goto_12
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 431
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 432
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 433
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 434
    if-eqz v3, :cond_16

    .line 435
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 436
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 428
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_17
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_12

    .line 444
    .end local v4           #str:Ljava/lang/String;
    :sswitch_c
    if-eqz p5, :cond_19

    .line 445
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 449
    .restart local v4       #str:Ljava/lang/String;
    :goto_14
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 450
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 451
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 452
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 453
    if-eqz v3, :cond_18

    .line 454
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 455
    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 450
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 447
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_19
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_14

    .line 463
    .end local v4           #str:Ljava/lang/String;
    :sswitch_d
    if-eqz p5, :cond_1b

    .line 464
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 468
    .restart local v4       #str:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 469
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 470
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 471
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 472
    if-eqz v3, :cond_1a

    .line 473
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 474
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 466
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1b
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_16

    .line 482
    .end local v4           #str:Ljava/lang/String;
    :sswitch_e
    if-eqz p5, :cond_1d

    .line 483
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 487
    .restart local v4       #str:Ljava/lang/String;
    :goto_18
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 488
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_19
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1e

    .line 489
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 490
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 491
    if-eqz v3, :cond_1c

    .line 492
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 493
    const/4 v5, -0x5

    const/4 v6, -0x5

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 485
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1d
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_18

    .line 496
    .restart local v2       #i:I
    :cond_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "203"

    const/4 v7, -0x5

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 193
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 502
    :sswitch_f
    if-eqz p5, :cond_20

    .line 503
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 507
    .restart local v4       #str:Ljava/lang/String;
    :goto_1a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 508
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_21

    .line 509
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 510
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 511
    if-eqz v3, :cond_1f

    .line 512
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 513
    const/16 v5, -0x32

    const/16 v6, -0x32

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 505
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_20
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_1a

    .line 516
    .restart local v2       #i:I
    :cond_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "206"

    const/16 v7, -0x32

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_10
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 522
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 523
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 524
    if-eqz v3, :cond_22

    .line 525
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 526
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRingingBack(I)V

    .line 521
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 533
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_11
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 534
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 535
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 536
    if-eqz v3, :cond_23

    .line 537
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 539
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onEarlyMediaStart(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 533
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 546
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_12
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 547
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 548
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 549
    if-eqz v3, :cond_24

    .line 550
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 551
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->stopAlertTone(I)V

    .line 546
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 558
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_13
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_26

    .line 559
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 560
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 561
    if-eqz v3, :cond_25

    .line 562
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 563
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 558
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 566
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "307"

    const/16 v7, -0x31

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v2           #i:I
    :sswitch_14
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_20
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 572
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 573
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 574
    if-eqz v3, :cond_27

    .line 575
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 576
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 571
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 584
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_15
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 585
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 586
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 587
    if-eqz v3, :cond_28

    .line 588
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 589
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 584
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 596
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_16
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_22
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 597
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 598
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_29

    .line 599
    const/16 v5, -0x1a

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 596
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 606
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_17
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 607
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 608
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2a

    .line 609
    const/16 v5, -0x1b

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 606
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 616
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_18
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 617
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 618
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2b

    .line 619
    const/16 v5, -0x1c

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 616
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 626
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_19
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_25
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 627
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 628
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2c

    .line 629
    const/16 v5, -0x1d

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 626
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 636
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2e

    .line 637
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 638
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2d

    .line 639
    const/16 v5, -0x1e

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 636
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 642
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "116"

    const/16 v7, -0x1e

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v2           #i:I
    :sswitch_1b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_27
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_30

    .line 648
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 649
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2f

    .line 650
    const/16 v5, -0x26

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 647
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 653
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "101"

    const/16 v7, -0x26

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    .end local v2           #i:I
    :sswitch_1c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_28
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 659
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 660
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_31

    .line 661
    const/16 v5, -0x1f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 658
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 668
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_29
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 669
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 670
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_32

    .line 671
    const/16 v5, -0x20

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 668
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 678
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 679
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 680
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_33

    .line 681
    const/16 v5, -0xa

    const-string v6, "Network Lost"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 678
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 688
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 689
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 690
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_34

    .line 691
    const/16 v5, 0x19f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 688
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 698
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_20
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 699
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 700
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_35

    .line 701
    const/16 v5, -0x21

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 698
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 708
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_21
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_37

    .line 709
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 710
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_36

    .line 711
    const/16 v5, -0x19

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 708
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 714
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    const/16 v7, -0x19

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    .end local v2           #i:I
    :sswitch_22
    const/4 v1, 0x0

    .line 725
    .local v1, errCode:I
    const/16 v5, 0x162

    if-ne p2, v5, :cond_3a

    .line 726
    const/16 v1, -0x28

    .line 738
    :cond_38
    :goto_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3d

    .line 739
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 740
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_39

    .line 741
    const-string v5, "Call failed"

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 738
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 728
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_3a
    const/16 v5, 0x163

    if-ne p2, v5, :cond_3b

    .line 729
    const/16 v1, -0x29

    goto :goto_2e

    .line 731
    :cond_3b
    const/16 v5, 0x160

    if-ne p2, v5, :cond_3c

    .line 733
    const/16 v1, -0x2b

    goto :goto_2e

    .line 735
    :cond_3c
    const/16 v5, 0x161

    if-ne p2, v5, :cond_38

    .line 736
    const/16 v1, -0x2a

    goto :goto_2e

    .line 744
    .restart local v2       #i:I
    :cond_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    invoke-static {v1}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 749
    .end local v1           #errCode:I
    .end local v2           #i:I
    :sswitch_23
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 750
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 751
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3e

    .line 752
    const/16 v5, -0x18

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 749
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 759
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_24
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_31
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 760
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 761
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3f

    .line 762
    const/16 v5, -0x17

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 759
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 769
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_25
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 770
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 771
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_40

    .line 772
    const/16 v5, -0x25

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 769
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 779
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_26
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_33
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 780
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 781
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_41

    .line 782
    const/16 v5, -0x16

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 779
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 789
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_27
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_34
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 790
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 791
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_42

    .line 792
    const/16 v5, -0x15

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 789
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 799
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_28
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 800
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 801
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_43

    .line 802
    const/16 v5, -0x14

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 799
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 809
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_29
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_36
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 810
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 811
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_44

    .line 812
    const/16 v5, -0x13

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 809
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 819
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 820
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 821
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_45

    .line 822
    const/16 v5, -0x2d

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 819
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 829
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_38
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_47

    .line 830
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 831
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_46

    .line 832
    const/16 v5, -0x12

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 829
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 835
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "304"

    const/16 v7, -0x12

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    .end local v2           #i:I
    :sswitch_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_39
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_49

    .line 841
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 842
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_48

    .line 843
    const/16 v5, -0x11

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 840
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 846
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "202"

    const/16 v7, -0x11

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    .end local v2           #i:I
    :sswitch_2d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 852
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 853
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_4a

    .line 854
    const/16 v5, -0x10

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 851
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 861
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1300(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V

    goto/16 :goto_0

    .line 866
    :sswitch_2f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 867
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 868
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 869
    if-eqz v3, :cond_4b

    .line 870
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 871
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallBusy(I)V

    .line 866
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 879
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_30
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 880
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 881
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 882
    if-eqz v3, :cond_4c

    .line 883
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 884
    const/4 v5, -0x7

    const-string v6, "Called party not in LTE area"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 879
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 891
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_31
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 892
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 893
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 894
    if-eqz v3, :cond_4d

    .line 895
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 896
    const/16 v5, -0x2f

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 891
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 904
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_32
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 905
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 906
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 907
    if-eqz v3, :cond_4e

    .line 908
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 909
    const/16 v5, -0x34

    const-string v6, "Cannot connect call, Divert to normal call"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 904
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 916
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_33
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 917
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 918
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 919
    if-eqz v3, :cond_4f

    .line 920
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 921
    const/4 v5, -0x6

    const-string v6, "Called party does not exist"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 916
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 929
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_34
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_40
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 930
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 931
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 932
    if-eqz v3, :cond_50

    .line 933
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 934
    const/16 v5, -0x2c

    const-string v6, "Called party has only VoLte Alternative Services"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 929
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 941
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_35
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_41
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 942
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 943
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 944
    if-eqz v3, :cond_51

    .line 945
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 946
    const/16 v5, -0x22

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 941
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 954
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_36
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_42
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_53

    .line 955
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 956
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "reason code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 957
    if-eqz v3, :cond_52

    .line 958
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 959
    const/16 v5, -0x30

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 954
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 962
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "308"

    const/16 v7, -0x30

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    .end local v2           #i:I
    :sswitch_37
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_55

    .line 968
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 969
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 970
    if-eqz v3, :cond_54

    .line 971
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 972
    const/16 v5, -0x27

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 967
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 975
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_55
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "301"

    const/16 v7, -0x27

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 981
    .end local v2           #i:I
    :sswitch_38
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_44
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 982
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 983
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 984
    if-eqz v3, :cond_56

    .line 985
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 986
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 981
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 993
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_39
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 994
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 995
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 996
    if-eqz v3, :cond_57

    .line 997
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 998
    const/16 v5, 0x19f

    const-string v6, "Called party does not support media"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 993
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1005
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1006
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1007
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1008
    if-eqz v3, :cond_58

    .line 1009
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1010
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallHeld(I)V

    .line 1005
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1017
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1018
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1019
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1020
    if-eqz v3, :cond_59

    .line 1021
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1022
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallResumed(I)V

    .line 1017
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1031
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_48
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1032
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1033
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1034
    if-eqz v3, :cond_5a

    .line 1035
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1036
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(IILcom/sec/android/internal/ims/IIMSParams;)I
    invoke-static {v5, p1, p4, p6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;IILcom/sec/android/internal/ims/IIMSParams;)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1031
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1044
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1045
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1046
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1047
    if-eqz v3, :cond_5b

    .line 1048
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1049
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(IILcom/sec/android/internal/ims/IIMSParams;)I
    invoke-static {v5, p1, p4, p6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;IILcom/sec/android/internal/ims/IIMSParams;)I

    move-result v5

    invoke-interface {v3, p3, v5, p6, p2}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;I)V

    .line 1044
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1056
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1057
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1058
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1059
    if-eqz v3, :cond_5c

    .line 1060
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1061
    const/16 v5, -0x2d

    const-string v6, "Add user failed"

    invoke-interface {v3, p3, v5, v6, p2}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;I)V

    .line 1056
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1068
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1069
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1070
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1071
    if-eqz v3, :cond_5d

    .line 1072
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1073
    invoke-interface {v3, p3, p2, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onAddUserStatusChanged(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1068
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1079
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1080
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1081
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1082
    if-eqz v3, :cond_5e

    .line 1083
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1084
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1079
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1091
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_41
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1092
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1093
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1094
    if-eqz v3, :cond_5f

    .line 1095
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1096
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 1091
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1103
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_42
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1104
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1105
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1106
    if-eqz v3, :cond_60

    .line 1107
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1108
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1103
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1115
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_43
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1116
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1117
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1118
    if-eqz v3, :cond_61

    .line 1119
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1120
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1115
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1127
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_44
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1128
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1129
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1130
    if-eqz v3, :cond_62

    .line 1131
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1132
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1127
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1139
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_45
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1140
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1141
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1142
    if-eqz v3, :cond_63

    .line 1143
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1144
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1139
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1151
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_46
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1152
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1153
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1154
    if-eqz v3, :cond_64

    .line 1155
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1156
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1151
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1163
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_47
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1164
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1165
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1166
    if-eqz v3, :cond_65

    .line 1167
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1168
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1163
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1175
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_48
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_54
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1176
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1177
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1178
    if-eqz v3, :cond_66

    .line 1179
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1181
    const/16 v5, 0x14e

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1175
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1188
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_49
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_55
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1189
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1190
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1191
    if-eqz v3, :cond_67

    .line 1192
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1194
    const/16 v5, 0x14d

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1188
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 1201
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_56
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1203
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1204
    if-eqz v3, :cond_68

    .line 1205
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1206
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1201
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1213
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1214
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1215
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1216
    if-eqz v3, :cond_69

    .line 1217
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1218
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1213
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1225
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_58
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1226
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1227
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1228
    if-eqz v3, :cond_6a

    .line 1229
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1230
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1225
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1237
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_59
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1238
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1239
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1240
    if-eqz v3, :cond_6b

    .line 1241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1242
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1237
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1249
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1250
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1251
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1252
    if-eqz v3, :cond_6c

    .line 1253
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1254
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1249
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1261
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1262
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1263
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1264
    if-eqz v3, :cond_6d

    .line 1265
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1266
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1261
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1273
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_50
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1274
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1275
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1276
    if-eqz v3, :cond_6e

    .line 1277
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1278
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoHeld(I)V

    .line 1273
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1285
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_51
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1286
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1287
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1288
    if-eqz v3, :cond_6f

    .line 1289
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1290
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoResumed(I)V

    .line 1285
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1297
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_52
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1298
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1299
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1300
    if-eqz v3, :cond_70

    .line 1301
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1302
    const/16 v5, 0x2bc

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1297
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 1308
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_53
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1309
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1310
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1311
    if-eqz v3, :cond_71

    .line 1312
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1313
    const/16 v5, 0x2bd

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1308
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1322
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_54
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_60
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1323
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1324
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1325
    if-eqz v3, :cond_72

    .line 1326
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1327
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_HOLD_FAILED_IND.."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1328
    const/16 v5, 0x2be

    const-string v6, "Hold has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1322
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 1335
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_55
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_61
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1336
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1337
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1338
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_RETRIEVE_FAILED_IND..."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1339
    if-eqz v3, :cond_73

    .line 1340
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1341
    const/16 v5, 0x2bf

    const-string v6, "Resume has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1335
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 1349
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_56
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_62
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1350
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1351
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1352
    if-eqz v3, :cond_74

    .line 1353
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1354
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoAvailable(I)V

    .line 1349
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1361
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_57
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_63
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1362
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1363
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1364
    if-eqz v3, :cond_75

    .line 1365
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1366
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onReinviteReceived(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1361
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1377
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_76
    const-string v5, "SamsungAPCommonService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event listener invalid app type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_8
        0x67 -> :sswitch_b
        0x68 -> :sswitch_9
        0x6d -> :sswitch_e
        0x6e -> :sswitch_c
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0x71 -> :sswitch_f
        0xca -> :sswitch_7
        0xcb -> :sswitch_41
        0xcc -> :sswitch_14
        0xcd -> :sswitch_10
        0xcf -> :sswitch_15
        0xd0 -> :sswitch_40
        0xd1 -> :sswitch_13
        0xd2 -> :sswitch_2b
        0xd4 -> :sswitch_2d
        0xd5 -> :sswitch_2e
        0xd6 -> :sswitch_29
        0xd7 -> :sswitch_33
        0xd8 -> :sswitch_30
        0xd9 -> :sswitch_2f
        0xda -> :sswitch_38
        0xdb -> :sswitch_36
        0xde -> :sswitch_1b
        0xe1 -> :sswitch_2c
        0xe4 -> :sswitch_16
        0xe5 -> :sswitch_17
        0xe6 -> :sswitch_18
        0xe7 -> :sswitch_19
        0xea -> :sswitch_1a
        0xeb -> :sswitch_37
        0xed -> :sswitch_1c
        0xee -> :sswitch_39
        0x107 -> :sswitch_54
        0x108 -> :sswitch_55
        0x109 -> :sswitch_3a
        0x10a -> :sswitch_3b
        0x12a -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_56
        0x12f -> :sswitch_21
        0x130 -> :sswitch_23
        0x131 -> :sswitch_24
        0x132 -> :sswitch_1f
        0x133 -> :sswitch_28
        0x134 -> :sswitch_26
        0x135 -> :sswitch_20
        0x136 -> :sswitch_30
        0x137 -> :sswitch_1d
        0x138 -> :sswitch_6
        0x139 -> :sswitch_5
        0x13a -> :sswitch_25
        0x13d -> :sswitch_27
        0x13e -> :sswitch_35
        0x13f -> :sswitch_3c
        0x141 -> :sswitch_2a
        0x142 -> :sswitch_3c
        0x147 -> :sswitch_3c
        0x14b -> :sswitch_42
        0x14c -> :sswitch_44
        0x14d -> :sswitch_49
        0x14e -> :sswitch_48
        0x14f -> :sswitch_52
        0x150 -> :sswitch_53
        0x151 -> :sswitch_43
        0x152 -> :sswitch_4c
        0x153 -> :sswitch_45
        0x154 -> :sswitch_4a
        0x155 -> :sswitch_4b
        0x156 -> :sswitch_4d
        0x157 -> :sswitch_46
        0x158 -> :sswitch_47
        0x159 -> :sswitch_4e
        0x15a -> :sswitch_50
        0x15b -> :sswitch_4f
        0x15c -> :sswitch_51
        0x15f -> :sswitch_0
        0x160 -> :sswitch_22
        0x161 -> :sswitch_22
        0x162 -> :sswitch_22
        0x163 -> :sswitch_22
        0x164 -> :sswitch_11
        0x165 -> :sswitch_34
        0x166 -> :sswitch_12
        0x167 -> :sswitch_1e
        0x168 -> :sswitch_31
        0x169 -> :sswitch_32
        0x172 -> :sswitch_3d
        0x173 -> :sswitch_3e
        0x174 -> :sswitch_57
        0x175 -> :sswitch_3f
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 1382
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS event received EventType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AppType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1384
    packed-switch p2, :pswitch_data_0

    .line 1398
    :cond_0
    return-void

    .line 1386
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1388
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1389
    if-eqz v1, :cond_1

    .line 1390
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1391
    invoke-interface {v1, p3, p5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onNotifyReceived(I[I[Ljava/lang/String;)V

    .line 1386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_0
    .end packed-switch
.end method
