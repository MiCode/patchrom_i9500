.class Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;
.super Ljava/lang/Object;
.source "SimeTabtabSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    const/4 v1, 0x1

    return v1
.end method
