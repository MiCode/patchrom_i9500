.class Lcom/android/settings_ex/myprofile/MyProfileActivity$2;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myprofile/MyProfileActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #getter for: Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$000(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#############  Callback from GradientColorPickerView -> onColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #getter for: Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$200(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #getter for: Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$300(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setKeepCustomColor(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #getter for: Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$300(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #calls: Lcom/android/settings_ex/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$100(Lcom/android/settings_ex/myprofile/MyProfileActivity;I)V

    .line 370
    return-void
.end method
