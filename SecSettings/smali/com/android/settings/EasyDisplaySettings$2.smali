.class Lcom/android/settings_ex/EasyDisplaySettings$2;
.super Ljava/lang/Object;
.source "EasyDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/EasyDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/EasyDisplaySettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/EasyDisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->this$0:Lcom/android/settings_ex/EasyDisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_font_noti"

    iget-object v2, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 248
    return-void
.end method
