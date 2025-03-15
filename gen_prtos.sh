FILE='model/company.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package company;' >> $FILE

echo 'message Company {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '  string name = 2;' >> $FILE
echo '  string description = 3;' >> $FILE
echo '  string logo = 4;' >> $FILE
echo '  string website = 5;' >> $FILE
echo '  string createdAt = 6;' >> $FILE
echo '  string updatedAt = 7;' >> $FILE
echo '}' >> $FILE

FILE='service/company.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package company;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/company.proto";' >> $FILE

echo 'message CompanyId {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '}' >> $FILE

echo 'message CompanyRequest {' >> $FILE
echo '  Company company = 1;' >> $FILE
echo '}' >> $FILE

echo 'service CompanyService {' >> $FILE
echo '  rpc GetCompany(CompanyId) returns (Company);' >> $FILE
echo '  rpc GetAllCompanies(google.protobuf.Empty) returns (stream Company);' >> $FILE
echo '  rpc CreateCompany(CompanyRequest) returns (Company);' >> $FILE
echo '  rpc UpdateCompany(CompanyRequest) returns (Company);' >> $FILE
echo '  rpc DeleteCompany(CompanyId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE

FILE='model/user.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package user;' >> $FILE

echo 'enum UserRole {' >> $FILE
echo '  CANDIDATE = 0;' >> $FILE
echo '  RECRUITER = 1;' >> $FILE
echo '  ADMIN = 2;' >> $FILE
echo '}' >> $FILE

echo 'message User {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '  string name = 2;' >> $FILE
echo '  string email = 3;' >> $FILE
echo '  string password = 4;' >> $FILE
echo '  int32 companyId = 5;' >> $FILE
echo '  UserRole type = 6;' >> $FILE
echo '  string createdAt = 7;' >> $FILE
echo '  string updatedAt = 8;' >> $FILE
echo '}' >> $FILE

echo 'service/user.proto' >> $FILE
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package user;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/user.proto";' >> $FILE

echo 'message UserId {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '}' >> $FILE

echo 'message UserRequest {' >> $FILE
echo '  User user = 1;' >> $FILE
echo '}' >> $FILE

echo 'service UserService {' >> $FILE
echo '  rpc GetUser(UserId) returns (User);' >> $FILE
echo '  rpc GetAllUsers(google.protobuf.Empty) returns (stream User);' >> $FILE
echo '  rpc CreateUser(UserRequest) returns (User);' >> $FILE
echo '  rpc UpdateUser(UserRequest) returns (User);' >> $FILE
echo '  rpc DeleteUser(UserId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE

FILE='model/office.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package office;' >> $FILE

echo 'message Office {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '  string name = 2;' >> $FILE
echo '  string address = 3;' >> $FILE
echo '  string location = 4;' >> $FILE
echo '  string description = 5;' >> $FILE
echo '  int32 companyId = 6;' >> $FILE
echo '  string createdAt = 7;' >> $FILE
echo '  string updatedAt = 8;' >> $FILE
echo '}' >> $FILE

FILE='service/office.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package office;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/office.proto";' >> $FILE

echo 'message OfficeId {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '}' >> $FILE

echo 'message OfficeRequest {' >> $FILE
echo '  Office office = 1;' >> $FILE
echo '}' >> $FILE

echo 'service OfficeService {' >> $FILE
echo '  rpc GetOffice(OfficeId) returns (Office);' >> $FILE
echo '  rpc GetAllOffices(google.protobuf.Empty) returns (stream Office);' >> $FILE
echo '  rpc CreateOffice(OfficeRequest) returns (Office);' >> $FILE
echo '  rpc UpdateOffice(OfficeRequest) returns (Office);' >> $FILE
echo '  rpc DeleteOffice(OfficeId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE

FILE='model/position.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package position;' >> $FILE

echo 'enum PositionStatus {' >> $FILE
echo '  DRAFT = 0;' >> $FILE
echo '  OPEN = 1;' >> $FILE
echo '  EXPIRED = 2;' >> $FILE
echo '}' >> $FILE

echo 'message Position {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '  PositionStatus status = 2;' >> $FILE
echo '  string title = 3;' >> $FILE
echo '  string description = 4;' >> $FILE
echo '  int32 companyId = 5;' >> $FILE
echo '  string externalApplicationLink = 6;' >> $FILE
echo '  string createdAt = 7;' >> $FILE
echo '  string updatedAt = 8;' >> $FILE
echo '  string publishedAt = 9;' >> $FILE
echo '  string expiresAt = 10;' >> $FILE
echo '}' >> $FILE

FILE='service/position.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package position;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/position.proto";' >> $FILE

echo 'message PositionId {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '}' >> $FILE

echo 'message PositionRequest {' >> $FILE
echo '  Position position = 1;' >> $FILE
echo '}' >> $FILE

echo 'service PositionService {' >> $FILE
echo '  rpc GetPosition(PositionId) returns (Position);' >> $FILE
echo '  rpc GetAllPositions(google.protobuf.Empty) returns (stream Position);' >> $FILE
echo '  rpc CreatePosition(PositionRequest) returns (Position);' >> $FILE
echo '  rpc UpdatePosition(PositionRequest) returns (Position);' >> $FILE
echo '  rpc DeletePosition(PositionId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE

FILE='model/notification.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package notification;' >> $FILE

echo 'message Notification {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '  int32 userId = 2;' >> $FILE
echo '  string title = 3;' >> $FILE
echo '  string text = 4;' >> $FILE
echo '  string type = 5;' >> $FILE
echo '  string createdAt = 6;' >> $FILE
echo '  bool read = 7;' >> $FILE
echo '}' >> $FILE

FILE='service/notification.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package notification;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/notification.proto";' >> $FILE

echo 'message NotificationId {' >> $FILE
echo '  int32 id = 1;' >> $FILE
echo '}' >> $FILE

echo 'message NotificationRequest {' >> $FILE
echo '  Notification notification = 1;' >> $FILE
echo '}' >> $FILE

echo 'service NotificationService {' >> $FILE
echo '  rpc GetNotification(NotificationId) returns (Notification);' >> $FILE
echo '  rpc GetAllNotifications(google.protobuf.Empty) returns (stream Notification);' >> $FILE
echo '  rpc CreateNotification(NotificationRequest) returns (Notification);' >> $FILE
echo '  rpc UpdateNotification(NotificationRequest) returns (Notification);' >> $FILE
echo '  rpc DeleteNotification(NotificationId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE

FILE='model/auth_token.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package auth_token;' >> $FILE

echo 'message AuthToken {' >> $FILE
echo '  string token = 1;' >> $FILE
echo '  int32 userId = 2;' >> $FILE
echo '  string expiresOn = 3;' >> $FILE
echo '  string deviceType = 4;' >> $FILE
echo '  string deviceOs = 5;' >> $FILE
echo '}' >> $FILE

FILE='service/auth_token.proto'
echo 'syntax = "proto3";' >> $FILE

echo 'option csharp_namespace = "JobPlatform.Protos";' >> $FILE

echo 'package auth_token;' >> $FILE

echo 'import "google/protobuf/empty.proto";' >> $FILE
echo 'import "model/auth_token.proto";' >> $FILE

echo 'message AuthTokenRequest {' >> $FILE
echo '  AuthToken authToken = 1;' >> $FILE
echo '}' >> $FILE

echo 'message AuthTokenId {' >> $FILE
echo '  string token = 1;' >> $FILE
echo '}' >> $FILE

echo 'service AuthTokenService {' >> $FILE
echo '    rpc CreateAuthToken(AuthTokenRequest) returns (AuthToken);' >> $FILE
echo '    rpc GetAuthToken(AuthTokenId) returns (AuthToken);' >> $FILE
echo '    rpc GetAllAuthTokens(google.protobuf.Empty) returns (stream AuthToken);' >> $FILE
echo '    rpc DeleteAuthToken(AuthTokenId) returns (google.protobuf.Empty);' >> $FILE
echo '}' >> $FILE