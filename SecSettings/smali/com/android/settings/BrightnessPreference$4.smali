.class Lcom/android/settings_ex/BrightnessPreference$4;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BrightnessPreference;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessPreference;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessPreference;I)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference$4;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    iput p2, p0, Lcom/android/settings_ex/BrightnessPreference$4;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference$4;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference$4;->val$val:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    return-void
.end method
