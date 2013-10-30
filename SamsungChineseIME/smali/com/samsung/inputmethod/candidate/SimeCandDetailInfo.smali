.class public Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
.super Ljava/lang/Object;
.source "SimeCandDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CPPhraseSource_AppCompletion:I = 0xb

.field public static final CPPhraseSource_Audb:I = 0x5

.field public static final CPPhraseSource_Catdb:I = 0x2

.field public static final CPPhraseSource_Contact:I = 0xa

.field public static final CPPhraseSource_HW:I = 0xd

.field public static final CPPhraseSource_Ldb:I = 0x1

.field public static final CPPhraseSource_Mdb:I = 0x3

.field public static final CPPhraseSource_NonUdbPrediction:I = 0x8

.field public static final CPPhraseSource_Rdb:I = 0x4

.field public static final CPPhraseSource_Sentence:I = 0x9

.field public static final CPPhraseSource_Udb:I = 0x6

.field public static final CPPhraseSource_UdbPrediction:I = 0x7

.field public static final CPPhraseSource_Unknown:I = 0x0

.field public static final CPPhraseSource_Verbatim:I = 0xc

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private srcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "pl"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "type"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    return v0
.end method

.method public isContectTypeContact()Z
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, bRet:Z
    const/16 v1, 0xa

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-ne v1, v2, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 86
    :cond_0
    return v0
.end method

.method public isContentTypeApp()Z
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, bRet:Z
    const/16 v1, 0xb

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-ne v1, v2, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public isContentTypeUDB()Z
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, bRet:Z
    const/4 v1, 0x5

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x6

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    if-ne v1, v2, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 79
    :cond_1
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method public setContentType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    .line 117
    :goto_0
    return-void

    .line 111
    :pswitch_1
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->srcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
