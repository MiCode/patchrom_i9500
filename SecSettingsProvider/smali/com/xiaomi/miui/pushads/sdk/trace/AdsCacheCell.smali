.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;
.super Ljava/lang/Object;
.source "AdsCacheCell.java"


# instance fields
.field public mBase64:Ljava/lang/String;

.field public mMd5:Ljava/lang/String;

.field public mShowType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "showType"
    .parameter "base64"
    .parameter "md5"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mShowType:I

    .line 16
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mBase64:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    .line 18
    return-void
.end method
