.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$Config;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$DecodeFromOption;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options$InputType;
    }
.end annotation


# instance fields
.field public inCancelingRequested:Z

.field public inDecodeFromOption:I

.field public inDither:Z

.field public inInputType:I

.field public inPreferredConfig:I

.field public inQualityOverSpeed:I

.field public inSampleSize:I

.field private mDecodeHandle:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const/4 v0, 0x7

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    .line 749
    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 750
    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDither:Z

    .line 752
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inQualityOverSpeed:I

    .line 753
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inInputType:I

    .line 754
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inDecodeFromOption:I

    .line 757
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:I

    .line 758
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    .line 759
    iput v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    .line 761
    iput-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 766
    return-void
.end method

.method static synthetic access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    .prologue
    .line 758
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return-void
.end method

.method static synthetic access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V
    .locals 0

    .prologue
    .line 759
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return-void
.end method


# virtual methods
.method protected getHandle()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I

    return v0
.end method

.method protected setHandle(I)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 785
    iput p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mDecodeHandle:I

    .line 786
    return-void
.end method
