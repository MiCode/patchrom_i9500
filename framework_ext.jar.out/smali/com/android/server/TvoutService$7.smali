.class Lcom/android/server/TvoutService$7;
.super Ljava/lang/Thread;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TvoutService;->TvoutToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;

.field final synthetic val$test:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/server/TvoutService$7;->this$0:Lcom/android/server/TvoutService;

    iput-object p2, p0, Lcom/android/server/TvoutService$7;->val$test:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 792
    :goto_0
    iget-object v0, p0, Lcom/android/server/TvoutService$7;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HOME_THEATER_CONNECTED:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$1800(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/TvoutService$7;->val$test:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 794
    iget-object v0, p0, Lcom/android/server/TvoutService$7;->val$test:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 795
    iget-object v0, p0, Lcom/android/server/TvoutService$7;->val$test:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method
