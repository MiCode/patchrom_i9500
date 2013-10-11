.class Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
.super Ljava/lang/Object;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsDetailedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidDetail"
.end annotation


# instance fields
.field private m_listDetailNames:Ljava/util/ArrayList;

.field private m_name:Ljava/lang/String;

.field private m_uid:I

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V
    .locals 1
    .parameter
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    .line 173
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    .line 175
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->setUid(I)V

    .line 176
    return-void
.end method

.method private addDetailNames(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 249
    .local v2, size:I
    const/4 v0, 0x0

    .line 250
    .local v0, dname:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dname:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 252
    .restart local v0       #dname:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getTetheringLabel()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 259
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 260
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, usbRegexs:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v4

    if-eqz v9, :cond_0

    move v3, v7

    .line 266
    .local v3, usbAvailable:Z
    :goto_0
    array-length v9, v6

    if-eqz v9, :cond_1

    move v5, v7

    .line 267
    .local v5, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v7

    .line 269
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 270
    const-string v7, "Tethering"

    .line 282
    :goto_3
    return-object v7

    .end local v0           #bluetoothAvailable:Z
    .end local v3           #usbAvailable:Z
    .end local v5           #wifiAvailable:Z
    :cond_0
    move v3, v8

    .line 264
    goto :goto_0

    .restart local v3       #usbAvailable:Z
    :cond_1
    move v5, v8

    .line 266
    goto :goto_1

    .restart local v5       #wifiAvailable:Z
    :cond_2
    move v0, v8

    .line 267
    goto :goto_2

    .line 271
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 272
    const-string v7, "Tethering"

    goto :goto_3

    .line 273
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 274
    const-string v7, "Tethering"

    goto :goto_3

    .line 275
    :cond_5
    if-eqz v5, :cond_6

    .line 276
    const-string v7, "Portable hotspot"

    goto :goto_3

    .line 277
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 278
    const-string v7, "Tethering"

    goto :goto_3

    .line 279
    :cond_7
    if-eqz v3, :cond_8

    .line 280
    const-string v7, "USB Tethering"

    goto :goto_3

    .line 282
    :cond_8
    const-string v7, "Bluetooth Tethering"

    goto :goto_3
.end method

.method private setUid(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_uid:I

    .line 180
    sparse-switch p1, :sswitch_data_0

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->updateNames()V

    .line 195
    return-void

    .line 182
    :sswitch_0
    const-string v0, "Kernel"

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    goto :goto_0

    .line 185
    :sswitch_1
    const-string v0, "Android OS"

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    goto :goto_0

    .line 188
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->getTetheringLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    goto :goto_0

    .line 191
    :sswitch_3
    const-string v0, "Uninstalled App"

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    goto :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_3
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateNames()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 197
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 198
    .local v7, pm:Landroid/content/pm/PackageManager;
    iget v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_uid:I

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, packageNames:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v3, v6

    .line 201
    .local v3, length:I
    :cond_0
    if-ne v3, v9, :cond_2

    .line 202
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 203
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    .line 220
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    if-le v3, v9, :cond_1

    .line 205
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    if-nez v8, :cond_3

    .line 206
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    .line 207
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 208
    aget-object v5, v6, v1

    .line 209
    .local v5, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 210
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 211
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->addDetailNames(Ljava/lang/String;)V

    .line 212
    iget v8, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_4

    .line 213
    iget v8, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public getUid()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_uid:I

    return v0
.end method

.method public toFormatString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 226
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 232
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->m_listDetailNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_1

    .line 235
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
