.class Lcom/android/settings_ex/SettingsTabActivity$1;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsTabActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsTabActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings_ex/SettingsTabActivity$1;->this$0:Lcom/android/settings_ex/SettingsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$1;->this$0:Lcom/android/settings_ex/SettingsTabActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 312
    return-void
.end method
