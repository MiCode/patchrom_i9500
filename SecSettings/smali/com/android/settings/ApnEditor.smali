.class public Lcom/android/settings_ex/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ERROR_DIALOG_UNAVAILABLE_APN_ID:I = 0xa

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_APN_TYPE:Ljava/lang/String; = "apn_type_list"

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static final VZW_DEFAULTAPN_URI31:Landroid/net/Uri;

.field private static final VZW_DEFAULTAPN_URI6:Landroid/net/Uri;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private dunRequired:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnSettingsObserver:Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/preference/ListPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mHasMdmEditedApn:Z

.field private mHasUserEditedApn:Z

.field private mIsSprHidden:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-class v0, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    .line 130
    const-string v0, "content://telephony/carriers/6"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->VZW_DEFAULTAPN_URI6:Landroid/net/Uri;

    .line 131
    const-string v0, "content://telephony/carriers/31"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->VZW_DEFAULTAPN_URI31:Landroid/net/Uri;

    .line 135
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 126
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->dunRequired:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mHasUserEditedApn:Z

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z

    return p1
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 654
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 661
    :goto_0
    return-object v3

    .line 657
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1080
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    :cond_0
    const-string p1, ""

    .line 1083
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1090
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    :cond_0
    const-string p1, "*"

    .line 1099
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1092
    .restart local p1
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1093
    const-string p1, "default"

    goto :goto_0

    .line 1094
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1095
    const-string p1, "mms"

    goto :goto_0

    .line 1096
    :cond_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    const-string p1, "supl"

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1017
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    :cond_0
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1020
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_c

    .line 1027
    if-nez p1, :cond_1

    .line 1028
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1073
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1029
    .restart local p1
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    :cond_2
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1031
    :cond_3
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1032
    const-string p1, "internet + mms"

    goto :goto_0

    .line 1033
    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1034
    const-string p1, "internet + dun"

    goto :goto_0

    .line 1035
    :cond_5
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1036
    const-string p1, "internet"

    goto :goto_0

    .line 1037
    :cond_6
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1038
    const-string p1, "mms"

    goto :goto_0

    .line 1039
    :cond_7
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1040
    const-string p1, "dun"

    goto :goto_0

    .line 1041
    :cond_8
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1043
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1044
    :cond_9
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1045
    const-string p1, "internet + mms"

    goto :goto_0

    .line 1046
    :cond_a
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1047
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 1049
    :cond_b
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1056
    :cond_c
    if-nez p1, :cond_d

    .line 1057
    sget-object p1, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1058
    :cond_d
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1059
    :cond_e
    const-string p1, "internet + mms + supl"

    goto/16 :goto_0

    .line 1060
    :cond_f
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1061
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1062
    :cond_10
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1063
    const-string p1, "mms"

    goto/16 :goto_0

    .line 1064
    :cond_11
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1065
    const-string p1, "supl"

    goto/16 :goto_0

    .line 1066
    :cond_12
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1068
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1070
    :cond_13
    const-string p1, "internet"

    goto/16 :goto_0
.end method

.method private deleteApn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x5

    .line 991
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 992
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Deleting APN  succeeded"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1001
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1002
    return-void

    .line 996
    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Deleting APN  failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillUi()V
    .locals 15

    .prologue
    .line 418
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fillUi(), isFirstTime? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", newAPN? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, apnType:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-eqz v11, :cond_4

    .line 422
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 424
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 425
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 426
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 427
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 428
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 429
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 430
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 431
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xc

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 432
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xd

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 433
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 434
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 435
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xa

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 436
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    if-nez v11, :cond_0

    .line 437
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_1

    .line 441
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, numeric:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_1

    .line 446
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, mcc:Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, mnc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 451
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 452
    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 453
    iput-object v6, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 457
    .end local v6           #mcc:Ljava/lang/String;
    .end local v7           #mnc:Ljava/lang/String;
    .end local v8           #numeric:Ljava/lang/String;
    :cond_1
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    if-eqz v11, :cond_3

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->isDunExist()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->dunRequired:Z

    .line 460
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->dunRequired:Z

    if-eqz v11, :cond_2

    .line 461
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const v12, 0x7f0a0070

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 462
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const v12, 0x7f0a0071

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 466
    :cond_2
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fillUi(), APN type DB data : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xf

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->dunRequired:Z

    if-eqz v11, :cond_14

    .line 471
    if-eqz v0, :cond_13

    .line 472
    const-string v11, "*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 473
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,mms,dun"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 509
    :cond_3
    :goto_0
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 510
    .local v2, authVal:I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_19

    .line 511
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 516
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x10

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 517
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x11

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1a

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 519
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x12

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 522
    .end local v2           #authVal:I
    :cond_4
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    if-nez v11, :cond_1b

    .line 537
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    :goto_3
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, authVal:Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 545
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 546
    .local v3, authValIndex:I
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 548
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0a0044

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, values:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v12, v10, v3

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    .end local v3           #authValIndex:I
    .end local v10           #values:[Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    const/4 v5, 0x0

    .line 562
    .local v5, ipeditable:Z
    const-string v11, "ril.ipversion.editable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, apneditable:Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v11, "true"

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 564
    const/4 v5, 0x1

    .line 567
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableEditingIpVersionType"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    if-eqz v5, :cond_1d

    .line 568
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 569
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 575
    :goto_5
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->isEditable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    .line 577
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 579
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 580
    .local v4, index:I
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xb

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 581
    .restart local v8       #numeric:Ljava/lang/String;
    const-string v11, "45005"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const/16 v11, 0x3e8

    if-ne v11, v4, :cond_1e

    .line 583
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    .line 594
    .end local v4           #index:I
    .end local v8           #numeric:Ljava/lang/String;
    :cond_7
    :goto_6
    const-string v11, "SPR"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 595
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v11

    if-nez v11, :cond_22

    .line 596
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    .line 600
    :cond_8
    :goto_7
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 602
    :cond_9
    const-string v11, "apn_edit"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 604
    :cond_a
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 605
    iget-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    if-eqz v11, :cond_23

    .line 606
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v12, "isVzwEditable = true"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v11, "apn_edit"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 614
    :cond_b
    :goto_8
    const-string v11, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 616
    const-string v11, "apn_protocol"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 617
    .local v9, pref:Landroid/preference/Preference;
    if-eqz v9, :cond_c

    .line 618
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    :cond_c
    sget-object v11, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 622
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const-string v12, "default,supl"

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 631
    .end local v9           #pref:Landroid/preference/Preference;
    :cond_d
    return-void

    .line 474
    .end local v1           #apneditable:Ljava/lang/String;
    .end local v2           #authVal:Ljava/lang/String;
    .end local v5           #ipeditable:Z
    :cond_e
    const-string v11, "default"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 475
    const-string v11, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "dun"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 476
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,mms,dun"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_f
    const-string v11, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 478
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,mms"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :cond_10
    const-string v11, "dun"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 480
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,dun"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_11
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :cond_12
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_13
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_14
    if-eqz v0, :cond_18

    .line 492
    const-string v11, "*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 493
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,mms"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_15
    const-string v11, "default"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 495
    const-string v11, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 496
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl,mms"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :cond_16
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    const-string v12, "default,supl"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :cond_17
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_18
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .local v2, authVal:I
    :cond_19
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 518
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 539
    .end local v2           #authVal:I
    :cond_1b
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 540
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings_ex/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 551
    .local v2, authVal:Ljava/lang/String;
    :cond_1c
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v12, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 571
    .restart local v1       #apneditable:Ljava/lang/String;
    .restart local v5       #ipeditable:Z
    :cond_1d
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 572
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 584
    .restart local v4       #index:I
    .restart local v8       #numeric:Ljava/lang/String;
    :cond_1e
    const-string v11, "45008"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "45002"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    :cond_1f
    const/16 v11, 0x3e9

    if-eq v11, v4, :cond_20

    const/16 v11, 0x3ea

    if-ne v11, v4, :cond_21

    .line 587
    :cond_20
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    goto/16 :goto_6

    .line 588
    :cond_21
    const-string v11, "45006"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x3eb

    if-ne v11, v4, :cond_7

    .line 590
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    goto/16 :goto_6

    .line 598
    .end local v4           #index:I
    .end local v8           #numeric:Ljava/lang/String;
    :cond_22
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    goto/16 :goto_7

    .line 609
    :cond_23
    const-string v11, "apn_edit"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 610
    iget-object v11, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 926
    const/4 v1, 0x0

    .line 928
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 934
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0905b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 943
    :cond_0
    :goto_0
    return-object v1

    .line 935
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 936
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0905b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 937
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 938
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0905b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 940
    iget-object v5, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0905b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isDunExist()Z
    .locals 12

    .prologue
    .line 1137
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1140
    .local v10, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1142
    .local v8, isdunexist:Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1174
    .end local v8           #isdunexist:Z
    .local v9, isdunexist:I
    :goto_0
    return v9

    .line 1147
    .end local v9           #isdunexist:I
    .restart local v8       #isdunexist:Z
    :cond_0
    const/4 v6, 0x0

    .line 1148
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1153
    if-eqz v6, :cond_3

    .line 1154
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Query databases to find dun type"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1158
    :cond_1
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1159
    .local v11, types:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1160
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Dun type is exist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v8, 0x1

    .line 1163
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    .end local v11           #types:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .line 1174
    .restart local v9       #isdunexist:I
    goto :goto_0

    .line 1167
    .end local v9           #isdunexist:I
    :catch_0
    move-exception v7

    .line 1168
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v9, v8

    .restart local v9       #isdunexist:I
    goto/16 :goto_0

    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .end local v9           #isdunexist:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private isEditable()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 343
    const/4 v8, 0x1

    .line 344
    .local v8, editable:Z
    const/4 v6, 0x0

    .line 347
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    if-eqz v6, :cond_3

    .line 357
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :cond_1
    const-string v0, "XSA"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v9, :cond_3

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    :cond_2
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 380
    :cond_3
    if-eqz v6, :cond_4

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditable  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v8

    .line 377
    :catch_0
    move-exception v7

    .line 378
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    if-eqz v6, :cond_4

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 380
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 639
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 640
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 647
    :goto_0
    return-object v3

    .line 643
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1005
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1012
    :goto_0
    return-object v2

    .line 1008
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1009
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1010
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1012
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    .line 809
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mHasUserEditedApn:Z

    if-nez v1, :cond_0

    move v2, v13

    .line 922
    :goto_0
    return v2

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 814
    .local v11, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, apn:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 816
    .local v9, mcc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 818
    .local v10, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 819
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 821
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Saving APN  failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 831
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Saving APN  failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v13, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v13, :cond_3

    .line 845
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Saving APN  failed - invalid input fields"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 853
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 857
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v13, :cond_9

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09085f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v1, "apn"

    invoke-virtual {v12, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "proxy"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v1, "port"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, "mmsproxy"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "mmsport"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v1, "user"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v1, "server"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v1, "mmsc"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v1, "carrier_enabled"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 870
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 871
    .local v7, authVal:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 872
    const-string v1, "authtype"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    :cond_4
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v1, "roaming_protocol"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    if-nez v1, :cond_b

    .line 881
    const-string v1, "d2tmo"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "KTT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 883
    const-string v1, "type"

    const-string v2, "default,mms,supl"

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_2
    const-string v1, "mcc"

    invoke-virtual {v12, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v1, "mnc"

    invoke-virtual {v12, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 897
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 898
    const-string v1, "current"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 903
    .local v8, bearerVal:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 904
    const-string v1, "bearer"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 908
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    if-nez v1, :cond_8

    .line 909
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/ApnEditor;->VZW_DEFAULTAPN_URI6:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 910
    const-string v1, "name"

    const-string v2, "EHRPD - Verizon Internet"

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v1, "bearer"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ApnEditor;->VZW_DEFAULTAPN_URI31:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    :cond_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving APN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v2, v13

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 922
    goto/16 :goto_0

    .end local v7           #authVal:Ljava/lang/String;
    .end local v8           #bearerVal:Ljava/lang/String;
    :cond_9
    move-object v1, v11

    .line 857
    goto/16 :goto_1

    .line 885
    .restart local v7       #authVal:Ljava/lang/String;
    :cond_a
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 888
    :cond_b
    sget-object v1, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateAndSave() checkNotSetApn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const v7, 0x7f070010

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 207
    .local v2, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f090595

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 208
    const-string v7, "apn_name"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 209
    const-string v7, "apn_apn"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 211
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v11}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    :cond_0
    const-string v7, "apn_http_proxy"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 216
    const-string v7, "apn_http_port"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 217
    const-string v7, "apn_user"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 218
    const-string v7, "apn_server"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 219
    const-string v7, "apn_password"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 220
    const-string v7, "apn_mms_proxy"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 221
    const-string v7, "apn_mms_port"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 222
    const-string v7, "apn_mmsc"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 223
    const-string v7, "apn_mcc"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 224
    const-string v7, "apn_mnc"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 226
    const-string v7, "apn_type_list"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    .line 227
    const-string v7, "apn_type"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 229
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "List"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    .line 234
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    if-nez v7, :cond_4

    .line 235
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :goto_1
    const-string v7, "auth_type"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 240
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    const-string v7, "apn_protocol"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 243
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 246
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    const-string v7, "carrier_enabled"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 249
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, sales_code:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 251
    const-string v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_1
    const-string v7, "bearer"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 256
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 257
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 263
    .local v6, tempIntent:Landroid/content/Intent;
    const-string v7, "keyString"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, strName:Ljava/lang/String;
    const-string v7, "vzw"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, strNameVzw:Ljava/lang/String;
    if-nez v4, :cond_6

    .line 266
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    .line 269
    :goto_3
    if-nez v5, :cond_7

    .line 270
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    .line 273
    :goto_4
    const-string v7, "VZW"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    iget-boolean v7, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    if-nez v7, :cond_2

    .line 275
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 281
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 283
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 286
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 289
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 291
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 299
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_8

    move v7, v8

    :goto_5
    iput-boolean v7, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 303
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 304
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 332
    :goto_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v8, Lcom/android/settings_ex/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v11, v11}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 333
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    .line 337
    new-instance v7, Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings_ex/ApnEditor;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnSettingsObserver:Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;

    .line 339
    :goto_7
    return-void

    .line 232
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #sales_code:Ljava/lang/String;
    .end local v4           #strName:Ljava/lang/String;
    .end local v5           #strNameVzw:Ljava/lang/String;
    .end local v6           #tempIntent:Landroid/content/Intent;
    :cond_3
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnEditor;->mApnTypeStyle:Z

    goto/16 :goto_0

    .line 237
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 259
    .restart local v3       #sales_code:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 268
    .restart local v4       #strName:Ljava/lang/String;
    .restart local v5       #strNameVzw:Ljava/lang/String;
    .restart local v6       #tempIntent:Landroid/content/Intent;
    :cond_6
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    goto/16 :goto_3

    .line 272
    :cond_7
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    goto/16 :goto_4

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_8
    move v7, v9

    .line 301
    goto :goto_5

    .line 305
    :cond_9
    const-string v7, "android.intent.action.INSERT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 306
    iget-boolean v7, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    if-nez v7, :cond_a

    const-string v7, "pos"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 307
    :cond_a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    .line 312
    :goto_8
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    .line 316
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_c

    .line 317
    sget-object v7, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert new telephony provider into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 309
    :cond_b
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "pos"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_8

    .line 325
    :cond_c
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_6

    .line 328
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 949
    if-nez p1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0905b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e4f

    new-instance v3, Lcom/android/settings_ex/ApnEditor$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/ApnEditor$1;-><init>(Lcom/android/settings_ex/ApnEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 973
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 963
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 964
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090296

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f091070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 973
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f020184

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 721
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mEditable:Z

    if-ne v0, v3, :cond_1

    .line 723
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 724
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mIsVzwEditable:Z

    if-eqz v0, :cond_0

    .line 726
    const v0, 0x7f0905ae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020187

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 736
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    if-nez v0, :cond_1

    .line 737
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 738
    const v0, 0x7f0905b1

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 747
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 748
    const v0, 0x7f0905b2

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 754
    :goto_2
    return v3

    .line 730
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mIsSprHidden:Z

    if-nez v0, :cond_0

    .line 731
    const v0, 0x7f0905ae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020186

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 741
    :cond_3
    const v0, 0x7f0905b1

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 751
    :cond_4
    const v0, 0x7f0905b2

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 406
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mApnSettingsObserver:Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 407
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 780
    packed-switch p1, :pswitch_data_0

    .line 788
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 782
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 785
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 759
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 775
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 761
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 764
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 769
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 772
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 415
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    .line 667
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, key:Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 671
    .local v3, index:I
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 673
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a0044

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 674
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v3

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v3           #index:I
    .end local v6           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 675
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NumberFormatException;
    move v7, v8

    .line 676
    goto :goto_1

    .line 678
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 679
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, protocol:Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 681
    goto :goto_1

    .line 683
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 684
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 685
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 686
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings_ex/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 687
    .restart local v5       #protocol:Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 688
    goto :goto_1

    .line 690
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 693
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, bearer:Ljava/lang/String;
    if-nez v1, :cond_6

    move v7, v8

    .line 695
    goto :goto_1

    .line 697
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 698
    iget-object v7, p0, Lcom/android/settings_ex/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 701
    .end local v1           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v7, "apn_apn"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 702
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 703
    sget-object v7, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "apn_apn"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, apn:Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "wap.cingular"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 706
    :cond_8
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    move v7, v8

    .line 707
    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 978
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 980
    if-nez p1, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 984
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 987
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 390
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 393
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z

    .line 395
    invoke-direct {p0}, Lcom/android/settings_ex/ApnEditor;->fillUi()V

    .line 396
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z

    .line 398
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnEditor;->mHasUserEditedApn:Z

    .line 400
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 793
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 794
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1105
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1107
    .local v0, pref:Landroid/preference/Preference;
    const-string v2, "apn_type_list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1109
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, test:Ljava/lang/String;
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 1115
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1132
    .end local v1           #test:Ljava/lang/String;
    :goto_0
    return-void

    .line 1119
    :cond_0
    if-eqz v0, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1130
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/ApnEditor;->mHasUserEditedApn:Z

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1123
    sget-object v2, Lcom/android/settings_ex/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1125
    :cond_3
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
