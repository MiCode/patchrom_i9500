.class public Lcom/sec/android/internal/ims/IIMSParams;
.super Ljava/lang/Object;
.source "IIMSParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/internal/ims/IIMSParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioCodec:Ljava/lang/String;

.field private historyInfo:Ljava/lang/String;

.field private isConferenceCall:Ljava/lang/String;

.field private isVMSCall:Ljava/lang/String;

.field private modifySupported:Ljava/lang/String;

.field private numberPlus:Ljava/lang/String;

.field private pLettering:Ljava/lang/String;

.field private phonenumber:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;

.field private supportsConferenceCall:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/sec/android/internal/ims/IIMSParams$1;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IIMSParams$1;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/IIMSParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->supportsConferenceCall:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isVMSCall:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->phonenumber:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConferenceCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVMSCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isVMSCall:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    return-object v0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->phonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsConferenceCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->supportsConferenceCall:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setErrorReasonCode(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setIsConferenceCall(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setIsVMSCall(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->isVMSCall:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->phonenumber:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setSupportsConferenceCall(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->supportsConferenceCall:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->supportsConferenceCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isVMSCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->phonenumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
