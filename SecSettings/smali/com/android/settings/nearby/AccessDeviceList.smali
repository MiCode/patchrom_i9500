.class public Lcom/android/settings_ex/nearby/AccessDeviceList;
.super Ljava/lang/Object;
.source "AccessDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    }
.end annotation


# static fields
.field private static final KEY_DEVICE_INFO:Ljava/lang/String; = "device_"

.field private static final KEY_DEVICE_LIST_NUM:Ljava/lang/String; = "list_num"

.field private static final KEY_SEPARATOR:Ljava/lang/String; = "*--*"

.field private static final PREFERENCE_ACCEPT_LIST:Ljava/lang/String; = "AllshareAcceptList"

.field private static final PREFERENCE_PACKAGE:Ljava/lang/String; = "com.sec.android.nearby.mediaserver"

.field private static final PREFERENCE_REJECT_LIST:Ljava/lang/String; = "AllshareRejectList"

.field private static final TAGClass:Ljava/lang/String; = "AccessDeviceList"


# instance fields
.field private mAcceptList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRejectList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private static broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "accepted"
    .parameter "values"
    .parameter "context"

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.DELETE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method private loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter "prefName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, deviceList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;>;"
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    move-object/from16 v0, p2

    invoke-static {v2, v14, v0}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->clear()V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    const-string v14, "com.sec.android.nearby.mediaserver"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 200
    .local v12, other:Landroid/content/Context;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 202
    .local v13, pref_device:Landroid/content/SharedPreferences;
    const-string v2, "list_num"

    const/4 v14, 0x0

    invoke-interface {v13, v2, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 204
    .local v7, count:I
    if-eqz v7, :cond_7

    .line 205
    const-string v8, ""

    .line 206
    .local v8, deviceTemp:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, n:I
    :goto_0
    if-ge v11, v7, :cond_7

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "device_"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, ""

    invoke-interface {v13, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    const-string v3, ""

    .local v3, mac:Ljava/lang/String;
    const-string v5, ""

    .local v5, name:Ljava/lang/String;
    const-string v4, ""

    .local v4, ip:Ljava/lang/String;
    const-string v6, ""

    .line 210
    .local v6, port:Ljava/lang/String;
    const/4 v10, 0x0

    .line 212
    .local v10, index:I
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 215
    if-lez v10, :cond_4

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 217
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 225
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 228
    if-lez v10, :cond_5

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 230
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 241
    if-lez v10, :cond_6

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 243
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    :cond_2
    :goto_3
    move-object v6, v8

    .line 255
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loaded device: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;-><init>(Lcom/android/settings_ex/nearby/AccessDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v1, deviceInfo:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v1           #deviceInfo:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    .end local v3           #mac:Ljava/lang/String;
    .end local v4           #ip:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #port:Ljava/lang/String;
    .end local v10           #index:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 220
    .restart local v3       #mac:Ljava/lang/String;
    .restart local v4       #ip:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #port:Ljava/lang/String;
    .restart local v10       #index:I
    :cond_4
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no mac info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 233
    :cond_5
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no name info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 246
    :cond_6
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no userAgent info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_3

    .line 262
    .end local v3           #mac:Ljava/lang/String;
    .end local v4           #ip:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #port:Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #deviceTemp:Ljava/lang/String;
    .end local v10           #index:I
    .end local v11           #n:I
    .end local v12           #other:Landroid/content/Context;
    .end local v13           #pref_device:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v9

    .line 263
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccessDeviceList"

    const-string v14, "loadDeviceList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NameNotFoundException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    return-void
.end method

.method public static removeAcceptList(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 159
    .local v2, values:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v3, "*--*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    const/4 v3, 0x1

    invoke-static {v3, v2, p1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public static removeRejectList(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 173
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 174
    .local v2, values:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v3, "*--*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    const/4 v3, 0x0

    invoke-static {v3, v2, p1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getAcceptEntries()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 104
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 105
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 107
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 108
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;

    .line 110
    .local v2, info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_0

    .line 113
    .end local v2           #info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getAcceptEntryValues()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 117
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 120
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 121
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;

    .line 123
    .local v2, info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    goto :goto_0

    .line 126
    .end local v2           #info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getAcceptSize()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getRejectEntries()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 130
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 131
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 133
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 134
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;

    .line 136
    .local v2, info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_0

    .line 139
    .end local v2           #info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getRejectEntryValues()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 144
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 146
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 147
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;

    .line 149
    .local v2, info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    goto :goto_0

    .line 152
    .end local v2           #info:Lcom/android/settings_ex/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getRejectSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public isAcceptListEmpty()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRejectListEmpty()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPreference()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    const-string v1, "AllshareAcceptList"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    const-string v1, "AllshareRejectList"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 101
    return-void
.end method
