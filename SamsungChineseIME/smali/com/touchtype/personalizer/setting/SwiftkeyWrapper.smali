.class public Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/setting/SwiftkeyWrapper$2;
    }
.end annotation


# static fields
.field private static final LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/data/data/com.samsung.inputmethod/SwiftKey"

.field private static final PRELOADED_LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/system/sipdb"

.field public static final SWIFTKEYSDK_LICENSE:Ljava/lang/String; = "Samsung_nolimit_flow_f2498e18"

.field public static final SWIFTKEY_MAXIMUM_LOADED_LANGUAGEPACK:I = 0x4

.field private static final SwiftKeyConfigurationURL:Ljava/lang/String; = "http://www.touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-v1.0.json"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/touchtype_fluency/util/FileStorage;

    const-string v1, "/data/data/com.samsung.inputmethod/SwiftKey"

    const-string v2, "/system/sipdb"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-v1.0.json"

    const/4 v2, 0x4

    new-instance v3, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper$1;

    invoke-direct {v3}, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper$1;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 5

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, session:Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_start_0
    const-string v2, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, ex:Lcom/touchtype_fluency/LicenseException;
    sget-object v2, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaild swiftkey license : Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
