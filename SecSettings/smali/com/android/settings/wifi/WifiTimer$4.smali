.class Lcom/android/settings_ex/wifi/WifiTimer$4;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiTimer;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiTimer$4;->this$0:Lcom/android/settings_ex/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimer$4;->this$0:Lcom/android/settings_ex/wifi/WifiTimer;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method
