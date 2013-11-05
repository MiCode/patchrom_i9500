.class public Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;
.super Ljavax/net/SocketFactory;


# instance fields
.field private a:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->d()I

    move-result v4

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->f()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/4 v9, 0x5

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    aput-byte v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    const/4 v8, 0x2

    invoke-direct {p0, v3, v7, v8}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    const/4 v8, 0x1

    aget-byte v8, v7, v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->d:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v3, "fail in SOCKS5 proxy"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :pswitch_1
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_4
    aput-byte v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v5, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v7, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    const/4 v5, 0x2

    invoke-direct {p0, v3, v7, v5}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    const/4 v5, 0x1

    aget-byte v5, v7, v5

    if-nez v5, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v7, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v7, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v2, v7, v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x3

    const/4 v6, 0x3

    aput-byte v6, v7, v5

    const/4 v5, 0x4

    int-to-byte v6, v2

    aput-byte v6, v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v1, v5, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x5

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v5, p2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v7, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v7, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    const/4 v1, 0x4

    invoke-direct {p0, v3, v7, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    const/4 v1, 0x1

    aget-byte v1, v7, v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->d:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxySOCKS5: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    new-instance v2, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v3, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->d:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct {v2, v3, v0, v1}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    const/4 v1, 0x3

    :try_start_8
    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1

    :goto_5
    :pswitch_2
    return-object v0

    :pswitch_3
    const/4 v1, 0x6

    invoke-direct {p0, v3, v7, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    goto :goto_5

    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0, v3, v7, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    const/4 v1, 0x0

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v3, v7, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V

    goto :goto_5

    :pswitch_5
    const/16 v1, 0x12

    invoke-direct {p0, v3, v7, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/io/InputStream;[BI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_4

    :pswitch_6
    move v1, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Ljava/io/InputStream;[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->d:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v2, "stream is closed"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
