.class Lcom/android/settings_ex/LocationSettings$4;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationSettings;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocationSettings;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/LocationSettings$4;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$4;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    #getter for: Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/LocationSettings;->access$100(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 355
    return-void
.end method
