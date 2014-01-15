.class public Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;
.super Ljava/lang/Object;
.source "EncryptionPreferenceManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final SD_PREFERENCE_KEY:Ljava/lang/String; = "sdpref"

.field private static final TAG:Ljava/lang/String; = "EPM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 23
    iput-object p1, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 25
    return-void
.end method

.method private getSDPrefSummary()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f090a9d

    return v0
.end method


# virtual methods
.method public addSdCardEncryptionPreference(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "pg"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isExternalSDRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->getSDPrefSummary()I

    move-result v1

    .line 37
    .local v1, summary:I
    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, sdPref:Landroid/preference/Preference;
    const-string v2, "sdpref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 39
    const v2, 0x7f090a9c

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 40
    const-string v2, "com.android.settings_ex.encryption.CryptSDCardSettings"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 43
    .end local v0           #sdPref:Landroid/preference/Preference;
    .end local v1           #summary:I
    :cond_0
    return-void
.end method

.method public isSDcardEncryptionPossible()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
