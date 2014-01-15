.class Lcom/android/settings_ex/ModePreview$2;
.super Ljava/lang/Object;
.source "ModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ModePreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ModePreview;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/ModePreview$2;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$2;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 99
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$2;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview$2;->this$0:Lcom/android/settings_ex/ModePreview;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method
