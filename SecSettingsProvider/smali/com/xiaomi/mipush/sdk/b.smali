.class public Lcom/xiaomi/mipush/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/b;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/b/a/a;",
            ")",
            "Lcom/xiaomi/b/a/h;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    new-instance v3, Lcom/xiaomi/b/a/h;

    invoke-direct {v3}, Lcom/xiaomi/b/a/h;-><init>()V

    sget-object v1, Lcom/xiaomi/b/a/a;->a:Lcom/xiaomi/b/a/a;

    invoke-virtual {p2, v1}, Lcom/xiaomi/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/c/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4, v0}, Lcom/xiaomi/mipush/sdk/b;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    new-instance v4, Lcom/xiaomi/b/a/d;

    invoke-direct {v4}, Lcom/xiaomi/b/a/d;-><init>()V

    const-wide/16 v5, 0x5

    iput-wide v5, v4, Lcom/xiaomi/b/a/d;->a:J

    const-string v5, "fakeid"

    iput-object v5, v4, Lcom/xiaomi/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/b/a/h;->a(Lcom/xiaomi/b/a/d;)Lcom/xiaomi/b/a/h;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/b/a/h;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/b/a/h;

    invoke-virtual {v3, p2}, Lcom/xiaomi/b/a/h;->a(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    invoke-virtual {v3, v2}, Lcom/xiaomi/b/a/h;->c(Z)Lcom/xiaomi/b/a/h;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/b/a/h;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/h;

    invoke-virtual {v3, v1}, Lcom/xiaomi/b/a/h;->a(Z)Lcom/xiaomi/b/a/h;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/b/a/h;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/h;

    return-object v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "aes decode error."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/b;->a:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v2
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/b/a/h;)Lorg/apache/thrift/TBase;
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/b/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/b/a/h;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/b;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/b/a/h;->a()Lcom/xiaomi/b/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/b;->a(Lcom/xiaomi/b/a/a;)Lorg/apache/thrift/TBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/thrift/TException;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/b/a/h;->f()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/b/a/a;)Lorg/apache/thrift/TBase;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/b$1;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/b/a/k;

    invoke-direct {v0}, Lcom/xiaomi/b/a/k;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/b/a/r;

    invoke-direct {v0}, Lcom/xiaomi/b/a/r;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/b/a/p;

    invoke-direct {v0}, Lcom/xiaomi/b/a/p;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/b/a/t;

    invoke-direct {v0}, Lcom/xiaomi/b/a/t;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/b/a/n;

    invoke-direct {v0}, Lcom/xiaomi/b/a/n;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/b/a/e;

    invoke-direct {v0}, Lcom/xiaomi/b/a/e;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/b/a/g;

    invoke-direct {v0}, Lcom/xiaomi/b/a/g;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/b/a/m;

    invoke-direct {v0}, Lcom/xiaomi/b/a/m;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/xiaomi/b/a/i;

    invoke-direct {v0}, Lcom/xiaomi/b/a/i;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/xiaomi/b/a/g;

    invoke-direct {v0}, Lcom/xiaomi/b/a/g;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a([B[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/b;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/b;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
