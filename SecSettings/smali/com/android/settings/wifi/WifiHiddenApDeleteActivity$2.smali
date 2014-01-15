.class Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$2;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void
.end method
