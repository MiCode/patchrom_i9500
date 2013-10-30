.class Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;
.super Ljava/lang/Object;
.source "SimeSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    const/4 v1, 0x1

    return v1
.end method
