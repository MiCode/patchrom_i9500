.class public Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;
.super Landroid/preference/ListPreference;
.source "VibrationPatternListPreference.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "select_pattern"

.field public static final PRESET:Ljava/lang/String; = "100, 100, 100, 50, 100, 50, 100, 50, 100, 50, 100"

.field public static final PRIVATE_PREFERENCES:Ljava/lang/String; = "prefs"

.field public static final TAG:Ljava/lang/String; = "VibrationPatternListPreference"


# instance fields
.field backView:Lcom/android/settings_ex/personalvibration/BackgroundView;

.field private context:Landroid/content/Context;

.field private mClickedItem:I

.field private mOkButtonClicked:Z

.field private mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

.field private mPreviousPattern:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field patternLong:[J

.field sampleSelectedPattern:Ljava/lang/String;

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7f090d9b

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    .line 52
    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    .line 55
    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    .line 58
    iput-boolean v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mOkButtonClicked:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    .line 65
    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    .line 71
    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->patternLong:[J

    .line 73
    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->sampleSelectedPattern:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    .line 83
    const-string v0, "select_pattern"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 85
    invoke-virtual {p0, v3}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 86
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 87
    const v0, 0x7f020250

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 89
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->vib:Landroid/os/SystemVibrator;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;)Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mOkButtonClicked:Z

    return p1
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    .line 282
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    .line 285
    const-string v2, "VibrationPatternListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPreferences() : SelectDialogIsActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , SavedClickedItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 174
    iput p2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    .line 176
    const-string v0, "VibrationPatternListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() : mClickedItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->sampleSelectedPattern:Ljava/lang/String;

    .line 181
    iget v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    if-ne p2, v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "VibrationPatternListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleSelectedPattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->sampleSelectedPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->patternLong:[J

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->sampleSelectedPattern:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->patternLong:[J

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->vib:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->patternLong:[J

    const/4 v2, -0x1

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 193
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->savePreferences()V

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 222
    iget-boolean v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mOkButtonClicked:Z

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "VibrationPatternListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDialogClosed with SAVE : mClickedItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 227
    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    iput v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    .line 232
    :goto_0
    const-string v2, "VibrationPatternListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->savePreferences()V

    .line 235
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    if-nez v2, :cond_0

    .line 237
    const-string v2, "VibrationPatternListPreference"

    const-string v3, "mPatternListAdapter was null, then make new list adapter for mPatternListAdapter"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v2, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v2, v2, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    iget v3, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, selectedPattern:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, temp:Ljava/lang/String;
    const-string v2, "VibrationPatternListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved successfully.  selectedPattern = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / DEFAULT_VIBRATION_PATTERN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    iput v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    .line 251
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mOkButtonClicked:Z

    .line 253
    .end local v0           #selectedPattern:Ljava/lang/String;
    .end local v1           #temp:Ljava/lang/String;
    :cond_1
    return-void

    .line 229
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    iput v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    goto/16 :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 107
    const-string v1, "select_pattern"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, selectedPattern:Ljava/lang/String;
    const-string v1, "VibrationPatternListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "select_pattern"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v0, "100, 100, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    .line 122
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    if-gez v1, :cond_0

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const-string v1, "VibrationPatternListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : mPreviousPattern = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference$1;-><init>(Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    return-void

    .line 119
    :cond_1
    const-string v1, "VibrationPatternListPreference"

    const-string v2, "onPrepareDialogBuilder : selectedPattern != KEY_PREFERENCE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPreviousPattern:I

    goto :goto_0
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 261
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v3, "VibrationPatternListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePreferences() : SelectDialogIsActive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , SavedClickedItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public selectDialog()V
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->loadPreferences()V

    .line 199
    iget v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    iput v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    .line 202
    const-string v0, "VibrationPatternListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectDialog() : mClickedItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSavedClickedItem:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->savePreferences()V

    .line 215
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 153
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->loadPreferences()V

    .line 155
    iget-boolean v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->mSelectDialogIsActive:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->savePreferences()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/personalvibration/VibrationPatternListPreference;->selectDialog()V

    .line 160
    :cond_1
    return-void
.end method
