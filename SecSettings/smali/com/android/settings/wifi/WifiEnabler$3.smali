.class Lcom/android/settings_ex/wifi/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1000(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    #getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$1000(Lcom/android/settings_ex/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/android/settings_ex/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 501
    :cond_0
    return-void
.end method
