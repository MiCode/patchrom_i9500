.class Lcom/android/internal/telephony/gsm/SIMRecords$EfIsimImpiLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimImpiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, "EF_ISIM_IMPI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mHasIsim:Z

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v1, "EF_IMPI read"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 528
    return-void
.end method
