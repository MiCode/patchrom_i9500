.class Lcom/android/settings_ex/DreamSettings$1$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DreamSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings$1;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$1$1;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$1$1;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$1$1;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$300(Lcom/android/settings_ex/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$1$1;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DreamBackend;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$1$1;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #calls: Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$400(Lcom/android/settings_ex/DreamSettings;)V

    .line 116
    :cond_0
    return-void
.end method
