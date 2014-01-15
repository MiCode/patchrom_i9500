.class Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/SettingsTabActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings_ex/SettingsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/SettingsTabActivity;Lcom/android/settings_ex/SettingsTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings_ex/SettingsTabActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 289
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings_ex/SettingsTabActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings_ex/SettingsTabActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 277
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 283
    return-void
.end method
