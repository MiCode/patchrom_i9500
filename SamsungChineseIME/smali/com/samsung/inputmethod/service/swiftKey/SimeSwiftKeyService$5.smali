.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;
.super Ljava/lang/Object;
.source "SimeSwiftKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLayout(IZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

.field final synthetic val$inputMode:I

.field final synthetic val$keyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

.field final synthetic val$phonepad:Z


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iput-object p2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$keyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    iput-boolean p3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$phonepad:Z

    iput p4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$inputMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 767
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$800(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    .line 768
    .local v4, predictor:Lcom/touchtype_fluency/Predictor;
    invoke-interface {v4}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    .line 769
    .local v0, currentKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$keyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    iget-boolean v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$phonepad:Z

    iget v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$inputMode:I

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->parseKeyboardData(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)Ljava/lang/String;
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$900(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, keyPressFileName:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$inputMode:I

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSearchType(I)Lcom/touchtype_fluency/Predictor$SearchType;
    invoke-static {v5, v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;I)Lcom/touchtype_fluency/Predictor$SearchType;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/touchtype_fluency/Predictor;->setSearchType(Lcom/touchtype_fluency/Predictor$SearchType;)V

    .line 772
    iget-boolean v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$phonepad:Z

    if-eqz v5, :cond_1

    .line 774
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V
    invoke-static {v5, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/KeyPressModel;)V

    .line 775
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v5}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V

    .line 779
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-interface {v4}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->val$inputMode:I

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setLayoutCharacterMap(Lcom/touchtype_fluency/CharacterMap;I)V
    invoke-static {v5, v6, v7}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1200(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/CharacterMap;I)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1300(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/KeyPressModel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1300(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/KeyPressModel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, keyPressDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 788
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 792
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1400(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 794
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V
    invoke-static {v5, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/KeyPressModel;)V

    .line 795
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v5}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V

    .line 796
    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v6, v6, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCoordinate:Ljava/util/HashMap;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;Ljava/util/HashMap;)V
    invoke-static {v5, v0, v1, v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1500(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
