.class Lcom/android/settings_ex/DisplaySettings$19;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->showSmartRatationGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$19;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$19;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #calls: Lcom/android/settings_ex/DisplaySettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$1100(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1595
    return-void
.end method
