.class Lcom/android/settings_ex/DisplaySettings$12;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$12;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$12;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1294
    return-void
.end method
