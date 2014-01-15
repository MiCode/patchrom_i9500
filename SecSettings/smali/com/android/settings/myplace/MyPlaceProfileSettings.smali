.class public Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MyPlaceProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    }
.end annotation


# static fields
.field private static final ADD_BT_DEVICE_REQUEST:I = 0x2

.field private static final ADD_GPS_LOCATION_REQUEST:I = 0x3

.field private static final ADD_WIFI_LOCATION_REQUEST:I = 0x1

.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_OK:I = 0x1

.field private static final METHOD_TYPE_BT:I = 0x3

.field private static final METHOD_TYPE_MAP:I = 0x1

.field private static final METHOD_TYPE_NONE:I = 0x0

.field private static final METHOD_TYPE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MyPlaceSettings"


# instance fields
.field private mAddMode:Z

.field private mAutoConnect:Landroid/preference/CheckBoxPreference;

.field private mEditMode:Z

.field private mEditName:Landroid/widget/EditText;

.field private mId:I

.field mLocationBitmap:Landroid/graphics/Bitmap;

.field private mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

.field private mMethodPreference:Landroid/preference/PreferenceScreen;

.field private mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

.field private mSelectMethod:Landroid/preference/PreferenceScreen;

.field private mTextName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .line 87
    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 207
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 211
    :cond_0
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 213
    const-string v1, "key_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    .line 214
    const-string v1, "key_map"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    iput-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    .line 215
    const-string v1, "key_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    .line 216
    const-string v1, "key_auto_connect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_1
    :goto_0
    return-object v0

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initPlaceInfo()V
    .locals 8

    .prologue
    const v7, 0x7f0911c8

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 309
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 255
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_location"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_ap_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_ap_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_device_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bt_device_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "timestamp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_map"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0
.end method

.method private isPlaceInfoChanged()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.myplace.MyPlaceProvider/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v7, 0x0

    .line 345
    .local v7, isChanged:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    iget v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 347
    const-string v0, "MyPlaceSettings"

    const-string v1, "_id is not match"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v7, 0x0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 351
    const-string v0, "MyPlaceSettings"

    const-string v1, "type is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v7, 0x1

    .line 397
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaceInfoChanged() returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v7

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    const-string v0, "MyPlaceSettings"

    const-string v1, "mProfileName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v7, 0x1

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 359
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLocation is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v7, 0x1

    goto :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 363
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLatitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 367
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLongitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 371
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 375
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApBSSID is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 378
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 379
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiFrequency is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 383
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiAutoConnect is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 387
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtDeviceName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 390
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtMacAddress is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 395
    :cond_c
    const-string v0, "MyPlaceSettings"

    const-string v1, "moveToFirst() is failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showResetCriteriaDialog(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 686
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0911cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$5;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 701
    return-void
.end method

.method private updateProfile()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0911d5

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 328
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlaceInfo.mByteMap is not null, mPlaceInfo.mByteMap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 330
    .local v1, is:Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, LocationBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 333
    iput-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 334
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;

    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myplace/MyPlaceGpsPreference;->setGpsImage(Landroid/graphics/Bitmap;)V

    .line 337
    .end local v0           #LocationBitmap:Landroid/graphics/Bitmap;
    .end local v1           #is:Ljava/io/ByteArrayInputStream;
    :cond_1
    return-void

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0910aa

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0910ae

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 324
    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    iget-object v5, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 664
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 666
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 667
    const-string v5, "MyPlaceSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return v4

    .line 671
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 672
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 674
    if-nez v3, :cond_2

    .line 675
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 676
    goto :goto_0

    .line 679
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 680
    .local v1, isMobileAvail:Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method getSelectedTypeIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 618
    const/4 v0, -0x1

    .line 619
    .local v0, type:I
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 643
    :goto_0
    return v0

    .line 621
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_0

    .line 622
    const/4 v0, 0x3

    goto :goto_0

    .line 624
    :cond_0
    const/4 v0, 0x2

    .line 625
    goto :goto_0

    .line 627
    :pswitch_1
    const/4 v0, 0x0

    .line 628
    goto :goto_0

    .line 630
    :pswitch_2
    iget v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_1

    .line 631
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    .line 634
    goto :goto_0

    .line 636
    :pswitch_3
    iget v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_2

    .line 637
    const/4 v0, 0x2

    goto :goto_0

    .line 639
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isDuplicatePlaceName()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, profileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 603
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    :cond_0
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    .line 609
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 126
    const-string v2, "MyPlaceSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400bf

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b020c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b020d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    .line 134
    iget v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 153
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->initPlaceInfo()V

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    return-void

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 557
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), requestCode :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-ne p1, v6, :cond_2

    .line 559
    if-ne p2, v5, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 561
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "ssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "bssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "frequency"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 564
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v7}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 565
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v1, v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 596
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 597
    return-void

    .line 566
    :cond_1
    if-nez p2, :cond_0

    .line 567
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_2
    if-ne p1, v7, :cond_4

    .line 570
    if-ne p2, v5, :cond_3

    .line 571
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "DeviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "MacAddress"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v8}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0

    .line 575
    :cond_3
    if-nez p2, :cond_0

    .line 576
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_4
    if-ne p1, v8, :cond_0

    .line 579
    if-ne p2, v5, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 581
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "location"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "latitude"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 583
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "longitude"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 586
    const-string v1, "map"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 587
    .local v0, btMap:[B
    if-eqz v0, :cond_0

    .line 588
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_GPS_LOCATION_REQUEST, btMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    goto/16 :goto_0

    .line 591
    .end local v0           #btMap:[B
    :cond_5
    if-nez p2, :cond_0

    .line 592
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 407
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 408
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    .line 112
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my place id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "edit_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditMode:Z

    .line 114
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "add_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAddMode:Z

    .line 116
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAddMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v1, "MyPlaceSettings"

    const-string v2, "Bundle is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    iget-boolean v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const v0, 0x7f120005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f090143

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    const/4 v0, 0x1

    const v1, 0x7f0905b1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 160
    const-string v1, "MyPlaceSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 164
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 466
    :goto_0
    return v4

    .line 415
    :sswitch_0
    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0905b4

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0911d2

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, timeStamp:Ljava/lang/String;
    const-string v4, "type"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v4, "profile_name"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v4, "gps_location"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v4, "gps_latitude"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v4, "gps_longitude"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v4, "gps_map"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$700(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 433
    const-string v4, "wifi_ap_name"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$800(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v4, "wifi_bssid"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v4, "wifi_frequency"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v4, "wifi_auto_connect"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v4, "bt_device_name"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v4, "bt_mac_address"

    iget-object v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-boolean v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v4, :cond_3

    .line 441
    const-string v4, "timestamp"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_ADDED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 444
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "uri"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    move v4, v5

    .line 458
    goto/16 :goto_0

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    const-string v4, "timestamp"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    const-string v4, "changed_id"

    iget v6, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 462
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #timeStamp:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    move v4, v5

    .line 463
    goto/16 :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b0543 -> :sswitch_1
        0x7f0b0545 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f0911d3

    const v5, 0x104000a

    const/high16 v4, 0x104

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 473
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$2;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 552
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$4;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;-><init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v1, v0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "MyPlaceSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->updateProfile()V

    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 172
    return-void
.end method

.method resetPlaceInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 650
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$502(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$602(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 653
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$702(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$802(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiFrequency:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiAutoConnect:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    #setter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    return-void
.end method
