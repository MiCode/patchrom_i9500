.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field public static final CIPHERSUITES:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field public static final CLIENTAUTH:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final JSSEPROVIDER:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final KEYSTORE:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final KEYSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final KEYSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final KEYSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final KEYSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final SSLPROTOCOL:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final SYSKEYMGRALGO:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final SYSKEYSTORE:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final SYSKEYSTOREPWD:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final SYSKEYSTORETYPE:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final SYSTRUSTMGRALGO:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final SYSTRUSTSTORE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final SYSTRUSTSTOREPWD:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final SYSTRUSTSTORETYPE:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final TRUSTSTORE:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final TRUSTSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final TRUSTSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final TRUSTSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final TRUSTSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field private static final key:[B = null

.field private static final propertyKeys:[Ljava/lang/String; = null

.field private static final xorTag:Ljava/lang/String; = "{xor}"


# instance fields
.field private configs:Ljava/util/Hashtable;

.field private defaultProperties:Ljava/util/Properties;

.field private logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 137
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    .line 146
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    return-void

    :array_0
    .array-data 0x1
        0x9dt
        0xa7t
        0xd9t
        0x80t
        0x5t
        0xb8t
        0x89t
        0x9ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    .line 183
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    .line 184
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;)V
    .locals 0
    .parameter "logger"

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 192
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    .line 193
    return-void
.end method

.method private checkPropertyKeys(Ljava/util/Properties;)V
    .locals 6
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 223
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 224
    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, k:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->keyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid IBM SSL property key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v1           #k:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private convertPassword(Ljava/util/Properties;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 378
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, pw:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, epw:Ljava/lang/String;
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v0           #epw:Ljava/lang/String;
    :cond_0
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    if-eqz v1, :cond_1

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0       #epw:Ljava/lang/String;
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v0           #epw:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static deObfuscate(Ljava/lang/String;)[C
    .locals 6
    .parameter "ePassword"

    .prologue
    const/4 v3, 0x0

    .line 303
    if-nez p0, :cond_0

    .line 316
    :goto_0
    return-object v3

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, bytes:[B
    :try_start_0
    const-string v4, "{xor}"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 314
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 316
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i:I
    :cond_1
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toChar([B)[C

    move-result-object v3

    goto :goto_0
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"
    .parameter "ibmKey"
    .parameter "sysProperty"

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, res:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 809
    .end local v0           #res:Ljava/lang/String;
    .local v1, res:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 806
    .end local v1           #res:Ljava/lang/String;
    .restart local v0       #res:Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 807
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 809
    .end local v0           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "configID"
    .parameter "ibmKey"

    .prologue
    .line 824
    const/4 v1, 0x0

    .line 825
    .local v1, res:Ljava/lang/String;
    const/4 v0, 0x0

    .line 826
    .local v0, p:Ljava/util/Properties;
    if-eqz p1, :cond_0

    .line 827
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #p:Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 829
    .restart local v0       #p:Ljava/util/Properties;
    :cond_0
    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 831
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 841
    .end local v1           #res:Ljava/lang/String;
    .local v2, res:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 835
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 836
    if-eqz v0, :cond_2

    .line 837
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 838
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 839
    .end local v1           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    goto :goto_0

    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 841
    .end local v1           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 34
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .prologue
    .line 1117
    const-string v4, "getSSLContext"

    .line 1118
    .local v4, METHOD_NAME:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1120
    .local v5, ctx:Ljavax/net/ssl/SSLContext;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1121
    .local v16, protocol:Ljava/lang/String;
    if-nez v16, :cond_0

    .line 1122
    const-string v16, "TLS"

    .line 1124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12000"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_13

    move-object/from16 v27, p1

    :goto_0
    aput-object v27, v32, v33

    const/16 v27, 0x1

    aput-object v16, v32, v27

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1132
    .local v17, provider:Ljava/lang/String;
    if-nez v17, :cond_14

    .line 1133
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 1137
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12001"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_15

    move-object/from16 v27, p1

    :goto_2
    aput-object v27, v32, v33

    const/16 v27, 0x1

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    :cond_2
    const-string v27, "com.ibm.ssl.keyStore"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1144
    .local v13, keyStoreName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1145
    .local v12, keyStore:Ljava/security/KeyStore;
    const/4 v10, 0x0

    .line 1146
    .local v10, keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    const/4 v8, 0x0

    .line 1147
    .local v8, keyMgr:[Ljavax/net/ssl/KeyManager;
    if-nez v13, :cond_3

    .line 1149
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getXPDKeystore()Ljava/security/KeyStore;

    move-result-object v12

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 1151
    if-nez v12, :cond_17

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12002"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_16

    move-object/from16 v27, p1

    :goto_3
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_3
    :goto_4
    if-nez v12, :cond_b

    .line 1162
    if-nez v13, :cond_4

    .line 1167
    const-string v27, "com.ibm.ssl.keyStore"

    const-string v28, "javax.net.ssl.keyStore"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1169
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12004"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_19

    move-object/from16 v27, p1

    :goto_5
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v13, :cond_1a

    move-object/from16 v27, v13

    :goto_6
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStorePassword(Ljava/lang/String;)[C

    move-result-object v14

    .line 1176
    .local v14, keyStorePwd:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12005"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_1b

    move-object/from16 v27, p1

    :goto_7
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v14, :cond_1c

    invoke-static {v14}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_8
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1183
    .local v15, keyStoreType:Ljava/lang/String;
    if-nez v15, :cond_7

    .line 1184
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v15

    .line 1186
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12006"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_1d

    move-object/from16 v27, p1

    :goto_9
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v15, :cond_1e

    move-object/from16 v27, v15

    :goto_a
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    :cond_8
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 1193
    .local v9, keyMgrAlgo:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1194
    .local v11, keyMgrProvider:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 1195
    .local v7, keyManager:Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 1196
    move-object v9, v7

    .line 1199
    :cond_9
    if-eqz v13, :cond_b

    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    if-eqz v9, :cond_b

    .line 1201
    :try_start_1
    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v12

    .line 1202
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1203
    if-eqz v11, :cond_1f

    .line 1204
    invoke-static {v9, v11}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    .line 1208
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12010"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_20

    move-object/from16 v27, p1

    :goto_c
    aput-object v27, v32, v33

    const/16 v27, 0x1

    if-eqz v9, :cond_21

    .end local v9           #keyMgrAlgo:Ljava/lang/String;
    :goto_d
    aput-object v9, v32, v27

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12009"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_22

    move-object/from16 v27, p1

    :goto_e
    aput-object v27, v32, v33

    const/16 v27, 0x1

    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_a
    invoke-virtual {v10, v12, v14}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1217
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    .line 1233
    .end local v7           #keyManager:Ljava/lang/String;
    .end local v11           #keyMgrProvider:Ljava/lang/String;
    .end local v14           #keyStorePwd:[C
    .end local v15           #keyStoreType:Ljava/lang/String;
    :cond_b
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1234
    .local v24, trustStoreName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12011"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_23

    move-object/from16 v27, p1

    :goto_f
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v24, :cond_24

    move-object/from16 v27, v24

    :goto_10
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :cond_c
    const/16 v23, 0x0

    .line 1240
    .local v23, trustStore:Ljava/security/KeyStore;
    const/16 v21, 0x0

    .line 1241
    .local v21, trustMgrFact:Ljavax/net/ssl/TrustManagerFactory;
    const/16 v19, 0x0

    .line 1242
    .local v19, trustMgr:[Ljavax/net/ssl/TrustManager;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStorePassword(Ljava/lang/String;)[C

    move-result-object v25

    .line 1243
    .local v25, trustStorePwd:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12012"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_25

    move-object/from16 v27, p1

    :goto_11
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v25, :cond_26

    invoke-static/range {v25 .. v25}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_12
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1249
    .local v26, trustStoreType:Ljava/lang/String;
    if-nez v26, :cond_e

    .line 1250
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v26

    .line 1252
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12013"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_27

    move-object/from16 v27, p1

    :goto_13
    aput-object v27, v32, v33

    const/16 v33, 0x1

    if-eqz v26, :cond_28

    move-object/from16 v27, v26

    :goto_14
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    :cond_f
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v20

    .line 1259
    .local v20, trustMgrAlgo:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1260
    .local v22, trustMgrProvider:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v18

    .line 1261
    .local v18, trustManager:Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 1262
    move-object/from16 v20, v18

    .line 1265
    :cond_10
    if-eqz v24, :cond_12

    if-eqz v26, :cond_12

    if-eqz v25, :cond_12

    if-eqz v20, :cond_12

    .line 1267
    :try_start_3
    invoke-static/range {v26 .. v26}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v23

    .line 1268
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1269
    if-eqz v22, :cond_29

    .line 1270
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    .line 1274
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12017"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_2a

    move-object/from16 v27, p1

    :goto_16
    aput-object v27, v32, v33

    const/16 v27, 0x1

    if-eqz v20, :cond_2b

    .end local v20           #trustMgrAlgo:Ljava/lang/String;
    :goto_17
    aput-object v20, v32, v27

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12016"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_2c

    .end local p1
    :goto_18
    aput-object p1, v31, v32

    const/16 v32, 0x1

    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    :cond_11
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1285
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v19

    .line 1297
    :cond_12
    const/16 v27, 0x0

    :try_start_4
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v5, v8, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1305
    return-object v5

    .line 1126
    .end local v8           #keyMgr:[Ljavax/net/ssl/KeyManager;
    .end local v10           #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreName:Ljava/lang/String;
    .end local v17           #provider:Ljava/lang/String;
    .end local v18           #trustManager:Ljava/lang/String;
    .end local v19           #trustMgr:[Ljavax/net/ssl/TrustManager;
    .end local v21           #trustMgrFact:Ljavax/net/ssl/TrustManagerFactory;
    .end local v22           #trustMgrProvider:Ljava/lang/String;
    .end local v23           #trustStore:Ljava/security/KeyStore;
    .end local v24           #trustStoreName:Ljava/lang/String;
    .end local v25           #trustStorePwd:[C
    .end local v26           #trustStoreType:Ljava/lang/String;
    .restart local p1
    :cond_13
    const-string v27, "null (broker defaults)"

    goto/16 :goto_0

    .line 1135
    .restart local v17       #provider:Ljava/lang/String;
    :cond_14
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    goto/16 :goto_1

    .line 1139
    :cond_15
    const-string v27, "null (broker defaults)"

    goto/16 :goto_2

    .line 1153
    .restart local v8       #keyMgr:[Ljavax/net/ssl/KeyManager;
    .restart local v10       #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreName:Ljava/lang/String;
    :cond_16
    const-string v27, "null (broker defaults)"

    goto/16 :goto_3

    .line 1156
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12003"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_18

    move-object/from16 v27, p1

    :goto_19
    aput-object v27, v32, v33

    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_4

    .line 1298
    .end local v8           #keyMgr:[Ljavax/net/ssl/KeyManager;
    .end local v10           #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreName:Ljava/lang/String;
    .end local p1
    :catch_0
    move-exception v6

    .line 1299
    .local v6, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbca

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1156
    .end local v6           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v8       #keyMgr:[Ljavax/net/ssl/KeyManager;
    .restart local v10       #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreName:Ljava/lang/String;
    .restart local p1
    :cond_18
    :try_start_6
    const-string v27, "null (broker defaults)"

    goto :goto_19

    .line 1171
    :cond_19
    const-string v27, "null (broker defaults)"

    goto/16 :goto_5

    :cond_1a
    const-string v27, "null"

    goto/16 :goto_6

    .line 1178
    .restart local v14       #keyStorePwd:[C
    :cond_1b
    const-string v27, "null (broker defaults)"

    goto/16 :goto_7

    :cond_1c
    const-string v27, "null"

    goto/16 :goto_8

    .line 1188
    .restart local v15       #keyStoreType:Ljava/lang/String;
    :cond_1d
    const-string v27, "null (broker defaults)"

    goto/16 :goto_9

    :cond_1e
    const-string v27, "null"
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_a

    .line 1206
    .restart local v7       #keyManager:Ljava/lang/String;
    .restart local v9       #keyMgrAlgo:Ljava/lang/String;
    .restart local v11       #keyMgrProvider:Ljava/lang/String;
    :cond_1f
    :try_start_7
    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    goto/16 :goto_b

    .line 1210
    :cond_20
    const-string v27, "null (broker defaults)"

    goto/16 :goto_c

    :cond_21
    const-string v9, "null"

    goto/16 :goto_d

    .line 1213
    .end local v9           #keyMgrAlgo:Ljava/lang/String;
    :cond_22
    const-string v27, "null (broker defaults)"
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_e

    .line 1218
    :catch_1
    move-exception v6

    .line 1219
    .local v6, e:Ljava/security/KeyStoreException;
    :try_start_8
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbc8

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1300
    .end local v6           #e:Ljava/security/KeyStoreException;
    .end local v7           #keyManager:Ljava/lang/String;
    .end local v8           #keyMgr:[Ljavax/net/ssl/KeyManager;
    .end local v10           #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .end local v11           #keyMgrProvider:Ljava/lang/String;
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreName:Ljava/lang/String;
    .end local v14           #keyStorePwd:[C
    .end local v15           #keyStoreType:Ljava/lang/String;
    .end local p1
    :catch_2
    move-exception v6

    .line 1301
    .local v6, e:Ljava/security/NoSuchProviderException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbcf

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1220
    .end local v6           #e:Ljava/security/NoSuchProviderException;
    .restart local v7       #keyManager:Ljava/lang/String;
    .restart local v8       #keyMgr:[Ljavax/net/ssl/KeyManager;
    .restart local v10       #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11       #keyMgrProvider:Ljava/lang/String;
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreName:Ljava/lang/String;
    .restart local v14       #keyStorePwd:[C
    .restart local v15       #keyStoreType:Ljava/lang/String;
    .restart local p1
    :catch_3
    move-exception v6

    .line 1221
    .local v6, e:Ljava/security/cert/CertificateException;
    :try_start_9
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbcb

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1302
    .end local v6           #e:Ljava/security/cert/CertificateException;
    .end local v7           #keyManager:Ljava/lang/String;
    .end local v8           #keyMgr:[Ljavax/net/ssl/KeyManager;
    .end local v10           #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .end local v11           #keyMgrProvider:Ljava/lang/String;
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreName:Ljava/lang/String;
    .end local v14           #keyStorePwd:[C
    .end local v15           #keyStoreType:Ljava/lang/String;
    .end local p1
    :catch_4
    move-exception v6

    .line 1303
    .local v6, e:Ljava/security/KeyManagementException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbd0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1222
    .end local v6           #e:Ljava/security/KeyManagementException;
    .restart local v7       #keyManager:Ljava/lang/String;
    .restart local v8       #keyMgr:[Ljavax/net/ssl/KeyManager;
    .restart local v10       #keyMgrFact:Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11       #keyMgrProvider:Ljava/lang/String;
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreName:Ljava/lang/String;
    .restart local v14       #keyStorePwd:[C
    .restart local v15       #keyStoreType:Ljava/lang/String;
    .restart local p1
    :catch_5
    move-exception v6

    .line 1223
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_a
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbcc

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1224
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    .line 1225
    .local v6, e:Ljava/io/IOException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbcd

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1226
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 1227
    .local v6, e:Ljava/security/UnrecoverableKeyException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbce

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1236
    .end local v6           #e:Ljava/security/UnrecoverableKeyException;
    .end local v7           #keyManager:Ljava/lang/String;
    .end local v11           #keyMgrProvider:Ljava/lang/String;
    .end local v14           #keyStorePwd:[C
    .end local v15           #keyStoreType:Ljava/lang/String;
    .restart local v24       #trustStoreName:Ljava/lang/String;
    :cond_23
    const-string v27, "null (broker defaults)"

    goto/16 :goto_f

    :cond_24
    const-string v27, "null"

    goto/16 :goto_10

    .line 1245
    .restart local v19       #trustMgr:[Ljavax/net/ssl/TrustManager;
    .restart local v21       #trustMgrFact:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v23       #trustStore:Ljava/security/KeyStore;
    .restart local v25       #trustStorePwd:[C
    :cond_25
    const-string v27, "null (broker defaults)"

    goto/16 :goto_11

    :cond_26
    const-string v27, "null"

    goto/16 :goto_12

    .line 1254
    .restart local v26       #trustStoreType:Ljava/lang/String;
    :cond_27
    const-string v27, "null (broker defaults)"

    goto/16 :goto_13

    :cond_28
    const-string v27, "null"
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_14

    .line 1272
    .restart local v18       #trustManager:Ljava/lang/String;
    .restart local v20       #trustMgrAlgo:Ljava/lang/String;
    .restart local v22       #trustMgrProvider:Ljava/lang/String;
    :cond_29
    :try_start_b
    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    goto/16 :goto_15

    .line 1277
    :cond_2a
    const-string v27, "null (broker defaults)"

    goto/16 :goto_16

    :cond_2b
    const-string v20, "null"

    goto/16 :goto_17

    .line 1281
    .end local v20           #trustMgrAlgo:Ljava/lang/String;
    :cond_2c
    const-string p1, "null (broker defaults)"
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_18

    .line 1286
    .end local p1
    :catch_8
    move-exception v6

    .line 1287
    .local v6, e:Ljava/security/KeyStoreException;
    :try_start_c
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbd3

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1288
    .end local v6           #e:Ljava/security/KeyStoreException;
    :catch_9
    move-exception v6

    .line 1289
    .local v6, e:Ljava/security/cert/CertificateException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbd4

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1290
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :catch_a
    move-exception v6

    .line 1291
    .local v6, e:Ljava/io/FileNotFoundException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbd5

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27

    .line 1292
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v6

    .line 1293
    .local v6, e:Ljava/io/IOException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v28, 0xbd6

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v27
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_4
.end method

.method private getXPDKeystore()Ljava/security/KeyStore;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0xbd2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 876
    const/4 v4, 0x0

    .line 878
    .local v4, keyStore:Ljava/security/KeyStore;
    :try_start_0
    const-string v8, "com.ibm.rcp.security.auth.SecurePlatform"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 879
    .local v7, secPlatClass:Ljava/lang/Class;
    const-string v8, "getKeyStore"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 880
    .local v5, m:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 881
    .local v6, secPlat:Ljava/lang/Object;
    const-string v8, "isLoggedIn"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 882
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 883
    .local v1, b:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 885
    const-string v8, "getKeyStore"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 886
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/security/KeyStore;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 911
    .end local v1           #b:Ljava/lang/Boolean;
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #secPlat:Ljava/lang/Object;
    .end local v7           #secPlatClass:Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v4

    .line 895
    :catch_0
    move-exception v2

    .line 896
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 897
    .local v3, inserts:[Ljava/lang/Object;
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v8, v12, v13, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v8

    .line 898
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .end local v3           #inserts:[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 899
    .local v2, e:Ljava/lang/SecurityException;
    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 900
    .restart local v3       #inserts:[Ljava/lang/Object;
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v8, v12, v13, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v8

    .line 901
    .end local v2           #e:Ljava/lang/SecurityException;
    .end local v3           #inserts:[Ljava/lang/Object;
    :catch_2
    move-exception v2

    .line 902
    .local v2, e:Ljava/lang/NoSuchMethodException;
    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 903
    .restart local v3       #inserts:[Ljava/lang/Object;
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v8, v12, v13, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v8

    .line 904
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    .end local v3           #inserts:[Ljava/lang/Object;
    :catch_3
    move-exception v2

    .line 905
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 906
    .restart local v3       #inserts:[Ljava/lang/Object;
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v8, v12, v13, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v8

    .line 907
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #inserts:[Ljava/lang/Object;
    :catch_4
    move-exception v2

    .line 908
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 909
    .restart local v3       #inserts:[Ljava/lang/Object;
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v8, v12, v13, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v8

    .line 888
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #inserts:[Ljava/lang/Object;
    :catch_5
    move-exception v8

    goto :goto_0
.end method

.method public static isSupportedOnJVM()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    .prologue
    .line 168
    const-string v1, "javax.net.ssl.SSLServerSocketFactory"

    .line 170
    .local v1, requiredClassname:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private keyValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 204
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 207
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static obfuscate([C)Ljava/lang/String;
    .locals 6
    .parameter "password"

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    .line 283
    :cond_0
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toByte([C)[B

    move-result-object v0

    .line 284
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 285
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{xor}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, encryptedValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static packCipherSuites([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ciphers"

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, cipherSet:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 331
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 333
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    :cond_2
    return-object v1
.end method

.method public static toByte([C)[B
    .locals 6
    .parameter "c"

    .prologue
    .line 259
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 266
    :cond_0
    return-object v0

    .line 260
    :cond_1
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 261
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 262
    .local v3, j:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 263
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-char v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 264
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aget-char v5, p0, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0
.end method

.method public static toChar([B)[C
    .locals 7
    .parameter "b"

    .prologue
    .line 241
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 247
    :cond_0
    return-object v0

    .line 242
    :cond_1
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 243
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 244
    .local v3, j:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 245
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0
.end method

.method public static unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "ciphers"

    .prologue
    const/16 v5, 0x2c

    .line 351
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 366
    :goto_0
    return-object v3

    .line 352
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 353
    .local v0, c:Ljava/util/Vector;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 354
    .local v1, i:I
    const/4 v2, 0x0

    .line 356
    .local v2, j:I
    :goto_1
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    .line 358
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v2, v1, 0x1

    .line 360
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 365
    .local v3, s:[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public createServerSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 12
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1323
    const-string v0, "createServerSocketFactory"

    .line 1324
    .local v0, METHOD_NAME:Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1325
    .local v1, ctx:Ljavax/net/ssl/SSLContext;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v2, :cond_0

    .line 1327
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "createServerSocketFactory"

    const-string v6, "12018"

    new-array v7, v11, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    aput-object v2, v7, v9

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v8, 0x0

    invoke-direct {p0, p1, v2, v8}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v7, v10

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "createServerSocketFactory"

    const-string v6, "12019"

    new-array v7, v11, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    move-object v2, p1

    :goto_2
    aput-object v2, v7, v9

    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getClientAuthentication(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {v2, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v2

    return-object v2

    .line 1327
    :cond_1
    const-string v2, "null (broker defaults)"

    goto :goto_0

    :cond_2
    const-string v2, "null (using platform-enabled cipher suites)"

    goto :goto_1

    .line 1331
    :cond_3
    const-string v2, "null (broker defaults)"

    goto :goto_2
.end method

.method public createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 10
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .prologue
    .line 1352
    const-string v0, "createSocketFactory"

    .line 1353
    .local v0, METHOD_NAME:Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1354
    .local v1, ctx:Ljavax/net/ssl/SSLContext;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v2, :cond_0

    .line 1356
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "createSocketFactory"

    const-string v6, "12020"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v9, 0x0

    invoke-direct {p0, p1, v2, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v7, v8

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    return-object v2

    .line 1356
    :cond_1
    const-string v2, "null (broker defaults)"

    goto :goto_0

    :cond_2
    const-string v2, "null (using platform-enabled cipher suites)"

    goto :goto_1
.end method

.method public getClientAuthentication(Ljava/lang/String;)Z
    .locals 4
    .parameter "configID"

    .prologue
    .line 1096
    const-string v2, "com.ibm.ssl.clientAuthentication"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, auth:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1098
    .local v1, res:Z
    if-eqz v0, :cond_0

    .line 1099
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1101
    :cond_0
    return v1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .parameter "configID"

    .prologue
    .line 516
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    :goto_0
    check-cast v0, Ljava/util/Properties;

    check-cast v0, Ljava/util/Properties;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "configID"

    .prologue
    .line 1082
    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, ciphers:Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, res:[Ljava/lang/String;
    return-object v1
.end method

.method public getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 866
    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 1001
    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .prologue
    .line 923
    const-string v0, "com.ibm.ssl.keyStore"

    .line 924
    .local v0, ibmKey:Ljava/lang/String;
    const-string v4, "javax.net.ssl.keyStore"

    .line 926
    .local v4, sysProperty:Ljava/lang/String;
    const/4 v2, 0x0

    .line 927
    .local v2, res:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 928
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 944
    .end local v2           #res:Ljava/lang/String;
    .local v3, res:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 933
    .end local v3           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v5, "com.ibm.ssl.keyStore"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 934
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getXPDKeystore()Ljava/security/KeyStore;

    move-result-object v1

    .line 935
    .local v1, keyStore:Ljava/security/KeyStore;
    if-eqz v1, :cond_1

    .line 936
    const-string v2, "Lotus Expeditor"

    move-object v3, v2

    .end local v2           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    goto :goto_0

    .line 940
    .end local v1           #keyStore:Ljava/security/KeyStore;
    .end local v3           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 941
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 944
    .end local v2           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeyStorePassword(Ljava/lang/String;)[C
    .locals 4
    .parameter "configID"

    .prologue
    .line 956
    const-string v2, "com.ibm.ssl.keyStorePassword"

    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, pw:Ljava/lang/String;
    const/4 v1, 0x0

    .line 958
    .local v1, r:[C
    if-eqz v0, :cond_0

    .line 959
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 965
    :cond_0
    :goto_0
    return-object v1

    .line 962
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 989
    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 977
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 854
    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 1070
    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 1013
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStorePassword(Ljava/lang/String;)[C
    .locals 4
    .parameter "configID"

    .prologue
    .line 1025
    const-string v2, "com.ibm.ssl.trustStorePassword"

    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, pw:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1027
    .local v1, r:[C
    if-eqz v0, :cond_0

    .line 1028
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 1034
    :cond_0
    :goto_0
    return-object v1

    .line 1031
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 1058
    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "configID"

    .prologue
    .line 1046
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .parameter "props"
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 438
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 439
    .local v0, p:Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 440
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 441
    if-eqz p2, :cond_0

    .line 442
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public merge(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .parameter "props"
    .parameter "configID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 466
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 467
    .local v0, p:Ljava/util/Properties;
    if-nez p2, :cond_0

    .line 468
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #p:Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 470
    .restart local v0       #p:Ljava/util/Properties;
    :cond_0
    if-nez v0, :cond_1

    .line 471
    new-instance v0, Ljava/util/Properties;

    .end local v0           #p:Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 473
    .restart local v0       #p:Ljava/util/Properties;
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 474
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 475
    if-eqz p2, :cond_2

    .line 476
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .parameter "configID"

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, res:Z
    if-eqz p1, :cond_2

    .line 494
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method
