.class Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;


# direct methods
.method constructor <init>(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    #getter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$600(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :try_start_1
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    #getter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z
    invoke-static {v1}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$700(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 766
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-static {}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Initialized successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v1, v3}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    .line 778
    :goto_0
    monitor-exit v2

    .line 785
    :cond_1
    :goto_1
    return-void

    .line 772
    :cond_2
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 773
    invoke-static {}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Failed to initialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v1, v3}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception happened"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
