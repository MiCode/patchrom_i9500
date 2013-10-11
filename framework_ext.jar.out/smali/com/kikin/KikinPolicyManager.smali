.class public final Lcom/kikin/KikinPolicyManager;
.super Ljava/lang/Object;
.source "KikinPolicyManager.java"


# static fields
.field private static IS_KIKIN_ENABLED:Z = false

.field private static IS_KIKIN_ENABLED_CHECKED:Z = false

.field private static final KIKIN_POLICY_IMPL_CLASS_NAME:Ljava/lang/String; = "com.kikin.impl.KikinPolicyImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED:Z

    .line 13
    sput-boolean v0, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED_CHECKED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKikinEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    sget-boolean v1, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED_CHECKED:Z

    if-nez v1, :cond_0

    .line 48
    :try_start_0
    const-string v1, "com.kikin.impl.KikinPolicyImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    const/4 v1, 0x1

    sput-boolean v1, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-boolean v4, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED_CHECKED:Z

    .line 58
    :cond_0
    sget-boolean v1, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED:Z

    return v1

    .line 50
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kikin/KikinPolicyManager;->IS_KIKIN_ENABLED:Z

    .line 52
    const-string v1, "KikinPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kikin is not enabled. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeNewKikinPolicy(Lcom/kikin/IKikinSelectionCallbackHandler;)Lcom/kikin/IKikinPolicy;
    .locals 5
    .parameter "handler"

    .prologue
    .line 22
    :try_start_0
    const-string v2, "com.kikin.impl.KikinPolicyImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 23
    .local v1, policyClass:Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/kikin/IKikinSelectionCallbackHandler;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kikin/IKikinPolicy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    return-object v2

    .line 24
    .end local v1           #policyClass:Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 25
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 27
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 30
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 31
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 33
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 34
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 36
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 37
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 39
    .end local v0           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 40
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.kikin.impl.KikinPolicyImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
