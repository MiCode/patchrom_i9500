.class Lcom/android/settings_ex/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/MediaFormat;->access$000(Lcom/android/settings_ex/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    #calls: Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat;->access$100(Lcom/android/settings_ex/MediaFormat;)V

    .line 110
    :cond_0
    return-void
.end method
