.class public Lcom/android/internal/telephony/ims/ImsPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "ImsPhone.java"


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x24

.field private static final IMS_PS_DOMAIN:Ljava/lang/String; = "persist.radio.domain.ps"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field public static final RESTART_ECM_TIMER:I


# instance fields
.field public mCT:Lcom/android/internal/telephony/CallTracker;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field public mPostDialHandler:Landroid/os/Registrant;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private state:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "cm"
    .parameter "notifier"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;-><init>(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 89
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 91
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mCT:Lcom/android/internal/telephony/CallTracker;

    .line 96
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 99
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-interface {p3, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method private getCallType(Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Call$CallType;
    .locals 3
    .parameter "detail"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 146
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v0, v2, :cond_3

    .line 147
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    .line 164
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v1, :cond_1

    .line 150
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 151
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 152
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 153
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v2, :cond_5

    .line 154
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 157
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v1, :cond_4

    .line 158
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 160
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 164
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 925
    .local v0, isAirplaneMode:Z
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    const/4 v0, 0x1

    .line 929
    :cond_0
    return v0
.end method

.method private isPSDomain()Z
    .locals 2

    .prologue
    .line 450
    const-string v0, "persist.radio.domain.ps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 914
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->acceptCall()V

    .line 175
    return-void
.end method

.method public acceptCall(I)V
    .locals 1
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->acceptCall(I)V

    .line 171
    return-void
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 2
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 419
    .local p2, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    .line 426
    :goto_0
    return-void

    .line 421
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 422
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    goto :goto_0

    .line 424
    .restart local p1
    :cond_1
    const-string v0, "acceptConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 869
    const-string v0, "activateCellBroadcastSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    const-string v2, "ro.telephony.disable-call"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, disableCall:Ljava/lang/String;
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): ringingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): foregndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): backgndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 761
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 769
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 2
    .parameter "msg"
    .parameter "conn"
    .parameter "newCallType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 408
    .local p4, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    check-cast p2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p2
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/Connection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 415
    :goto_0
    return-void

    .line 410
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 411
    check-cast p2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p2
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/Connection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 413
    .restart local p2
    :cond_1
    const-string v0, "changeConnectionType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->clearDisconnected()V

    .line 321
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->conference()V

    .line 267
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with dialstring not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x3

    .line 230
    .local v2, domain:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Cannot dial IMS call in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isPSDomain()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const/4 v2, 0x2

    .line 238
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v1, p2, v2, p3}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 241
    .local v1, details:Lcom/android/internal/telephony/CallDetails;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsPhone;->getCallType(Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 242
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with uusinfo not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 799
    const-string v0, "disableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .parameter "causeCode"

    .prologue
    .line 493
    sparse-switch p1, :sswitch_data_0

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 515
    .local v0, serviceState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 516
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 523
    .end local v0           #serviceState:I
    :goto_0
    return-object v1

    .line 500
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 502
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 504
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 506
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 508
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 510
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 517
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 519
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 520
    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 521
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 523
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x11 -> :sswitch_5
        0x22 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2c -> :sswitch_0
        0x31 -> :sswitch_0
        0x3a -> :sswitch_0
        0x44 -> :sswitch_1
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_3
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 794
    const-string v0, "enableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public equals(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 142
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 132
    if-ne p1, p0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->explicitCallTransfer()V

    .line 279
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 702
    const-string v0, "getAvailableNetworks"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 736
    const-string v0, "getCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public getCallDomain(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .parameter "call"

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 186
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    return v1
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 680
    const-string v0, "getCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .parameter "call"

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 180
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    return v1
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 377
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 378
    return-void
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 874
    const-string v0, "getCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 535
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 545
    const-string v0, "getDataActivityState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 785
    const-string v0, "getDataCallList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 540
    const-string v0, "getDataConnectionState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 804
    const-string v0, "getDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 816
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    const-string v0, "getDeviceSvn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    const-string v0, "getEsn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getFDNavailable()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 863
    const-string v0, "getIccPhoneBookInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 857
    const-string v0, "getIccSmsInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    const-string v0, "getImei"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 846
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    const-string v0, "getLine1AlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    const-string v0, "getMeid"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 775
    const-string v0, "getNeighboringCids"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 366
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 367
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    const-string v0, "getPendingMmiCodes"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 851
    const-string v0, "getPhoneSubInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 852
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x5

    return v0
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    .prologue
    .line 884
    const-string v0, "getPostDialHandler"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 722
    const-string v0, "getPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 2
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 440
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getProposedConnectionType()I

    move-result v0

    .line 445
    :goto_0
    return v0

    .line 441
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 442
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getProposedConnectionType()I

    move-result v0

    goto :goto_0

    .line 444
    .restart local p1
    :cond_1
    const-string v0, "rejectConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 550
    const-string v0, "getSignalStrength"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    const-string v0, "getSktImsiM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    const-string v0, "getSktIrm"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 896
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSponImsi()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 828
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    const-string v0, "getVoiceMailAlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    const-string v0, "getVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 632
    const-string v0, "handleInCallMmiCommands"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 111
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    array-length v2, v2

    if-lt v2, v6, :cond_3

    .line 113
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 114
    .local v1, responseArray:[I
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS registration state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    aget v2, v1, v5

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v6}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0

    .line 117
    :cond_1
    aget v2, v1, v5

    if-ne v2, v6, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0

    .line 119
    :cond_2
    aget v2, v1, v5

    if-ne v2, v7, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v7}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0

    .line 122
    .end local v1           #responseArray:[I
    :cond_3
    const-string v2, "ImsPhone"

    const-string v3, "IMS State query failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 625
    const-string v0, "handlePinMmi"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 529
    const-string v0, "ImsPhone"

    const-string v1, "handleTimerInEmergencyCallbackMode, unsupported for this phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 906
    const-string v0, "hasIsim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public holdCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "ImsPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->switchHoldingAndActive()V

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 486
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 286
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 317
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 1

    .prologue
    .line 890
    const-string v0, "onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 615
    const-string v0, "registerForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->rejectCall()V

    .line 191
    return-void
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 430
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->rejectConnectionTypeChange()V

    .line 436
    :goto_0
    return-void

    .line 431
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 432
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 434
    .restart local p1
    :cond_1
    const-string v0, "rejectConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 712
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 717
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 348
    const/4 v0, 0x1

    .line 349
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 351
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BurstDtmf invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneBase;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 361
    :cond_1
    return-void

    .line 349
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 324
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 1
    .parameter "ussdMessage"
    .parameter "ussdLength"
    .parameter "dcsCode"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->sendEncodedUssd([BII)V

    .line 563
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 609
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 753
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 744
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 697
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 687
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 381
    const-string v0, "setCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 880
    const-string v0, "setCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 810
    const-string v0, "setDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 656
    const-string v0, "setLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 385
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setMute(Z)V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 707
    const-string v0, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 780
    const-string v0, "setOnPostDialCharacter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 372
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 1
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 729
    const-string v0, "setPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 638
    const-string v0, "setRadioPower"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 919
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 468
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 674
    const-string v0, "setVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public setmMmiInitBySTK(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    .line 590
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 334
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->stopDtmf()V

    .line 344
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "ImsPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->switchHoldingAndActive()V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 620
    const-string v0, "unregisterForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method updatePhoneState()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 295
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_0

    .line 304
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ^^^ new phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->notifyPhoneStateChanged()V

    .line 307
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 300
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 790
    const-string v0, "updateServiceLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 791
    return-void
.end method
