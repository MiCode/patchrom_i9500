.class Lcom/android/settings_ex/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/Settings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Settings;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/Settings$2;->this$0:Lcom/android/settings_ex/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/Settings$2;->this$0:Lcom/android/settings_ex/Settings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 310
    return-void
.end method
