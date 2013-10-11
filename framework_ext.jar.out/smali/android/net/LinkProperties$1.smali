.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v9, 0x0

    .line 502
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 503
    .local v4, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 506
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, v4iface:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 515
    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setSecondaryIPv4InterfaceName(Ljava/lang/String;)V

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, v6iface:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 519
    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->setSecondaryIPv6InterfaceName(Ljava/lang/String;)V

    .line 521
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, protocolType:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 523
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->setProtocolType(Ljava/lang/String;)V

    .line 526
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .local v0, addressCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 528
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    .end local v0           #addressCount:I
    .end local v2           #i:I
    .end local v5           #protocolType:Ljava/lang/String;
    .end local v6           #v4iface:Ljava/lang/String;
    .end local v7           #v6iface:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v4, v9

    .line 543
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #netProp:Landroid/net/LinkProperties;
    :cond_4
    :goto_1
    return-object v4

    .line 530
    .restart local v0       #addressCount:I
    .restart local v2       #i:I
    .restart local v4       #netProp:Landroid/net/LinkProperties;
    .restart local v5       #protocolType:Ljava/lang/String;
    .restart local v6       #v4iface:Ljava/lang/String;
    .restart local v7       #v6iface:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 533
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 536
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_7

    .line 538
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 540
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 541
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/ProxyProperties;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_1

    .line 534
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "size"

    .prologue
    .line 547
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
