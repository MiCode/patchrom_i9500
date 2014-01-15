.class Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;
.super Ljava/lang/Object;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SBeamController"
.end annotation


# static fields
.field private static final SBEAM_LAST_STATUS_KEY:Ljava/lang/String; = "sbeam_last_status"

.field private static final SBEAM_ONOFF_KEY:Ljava/lang/String; = "SBeam_on_off"

.field private static final SBEAM_PREF_NAME:Ljava/lang/String; = "pref_sbeam"

.field private static mContext:Landroid/content/Context;

.field private static mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    sput-object p1, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mContext:Landroid/content/Context;

    .line 803
    sget-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mContext:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 805
    return-void
.end method

.method static toggle(Z)V
    .locals 6
    .parameter "toggleOn"

    .prologue
    .line 822
    if-eqz p0, :cond_0

    .line 823
    sget-object v3, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 824
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_1

    .line 826
    const/4 p0, 0x0

    .line 848
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :cond_0
    :goto_0
    const-string v3, "SmartSwitchWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S Beam : toggle("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    sget-object v3, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 850
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SBeam_on_off"

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 851
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 853
    sget-object v3, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sbeam_mode"

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 854
    return-void

    .line 830
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #nfcAdapter:Landroid/nfc/NfcAdapter;
    :cond_1
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 831
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 832
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 835
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    .line 836
    .local v2, state:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 837
    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result p0

    .line 839
    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 840
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move-result p0

    .line 842
    :cond_4
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p0

    goto :goto_0

    .line 853
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    .end local v2           #state:I
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method isEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 816
    const-string v0, "SmartSwitchWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 858
    const-string v0, "SmartSwitchWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling changed preference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v0, "SBeam_on_off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    sget-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 862
    :cond_0
    return-void
.end method

.method register()V
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 809
    return-void
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$SBeamController;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 813
    return-void
.end method
