.class Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    #calls: Lcom/android/settings_ex/wifi/WifiOffloadDialog;->disableHomePopup()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->access$000(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method
