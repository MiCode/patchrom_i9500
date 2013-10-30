.class Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;
.super Ljava/lang/Object;
.source "SimeSettingsAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    const/4 v1, 0x1

    return v1
.end method
