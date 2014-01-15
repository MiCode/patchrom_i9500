.class Lcom/android/settings_ex/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/Introduction;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "arg0"

    .prologue
    const v3, 0x7f090a3e

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    #getter for: Lcom/android/settings_ex/fmm/Introduction;->mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/fmm/Introduction;->access$000(Lcom/android/settings_ex/fmm/Introduction;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 75
    .local v10, mTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 76
    invoke-virtual {v10, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 77
    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v12, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    add-int/lit8 v11, v1, 0x5a

    .line 79
    .local v11, timeJulianDay:I
    iget-object v1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/settings_ex/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 80
    .local v9, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 81
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_due_date"

    invoke-interface {v8, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v10           #mTime:Landroid/text/format/Time;
    .end local v11           #timeJulianDay:I
    :cond_0
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, deviceType:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v1, "tablet"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/settings_ex/fmm/Introduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/settings_ex/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 93
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-class v1, Lcom/android/settings_ex/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 101
    :goto_1
    return-void

    .line 90
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fmm/Introduction$1;->this$0:Lcom/android/settings_ex/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/settings_ex/fmm/Introduction;->finish()V

    goto :goto_0

    .line 97
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    const-class v1, Lcom/android/settings_ex/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method
