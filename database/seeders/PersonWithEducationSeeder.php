<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Person;
use App\Models\Education;
use App\Models\Certification;

class PersonWithEducationSeeder extends Seeder
{
    public function run()
    {
        // Person 1
        $person1 = Person::create([
            'name' => 'John Doe',
            'email' => 'john@example.com',
            'phone' => '081234567890',
            'job_title' => 'Software Engineer',
            'company' => 'Tech Corp',
            'city' => 'Jakarta',
            'bio' => 'Experienced software engineer with expertise in web development',
            'birth_date' => '1995-03-15'
        ]);

        // John's Education
        Education::create([
            'person_id' => $person1->id,
            'institution' => 'Universitas Indonesia',
            'degree' => 'Bachelor of Science',
            'major' => 'Computer Science',
            'start_year' => 2013,
            'end_year' => 2017,
            'gpa' => 3.75,
            'description' => 'Focused on software engineering and algorithms'
        ]);

        Education::create([
            'person_id' => $person1->id,
            'institution' => 'Institut Teknologi Bandung',
            'degree' => 'Master of Science',
            'major' => 'Information Technology',
            'start_year' => 2017,
            'end_year' => 2019,
            'gpa' => 3.85,
            'description' => 'Specialized in machine learning and data science'
        ]);

        // John's Certifications
        Certification::create([
            'person_id' => $person1->id,
            'name' => 'AWS Certified Developer',
            'issuing_organization' => 'Amazon Web Services',
            'issue_date' => '2022-06-15',
            'expiry_date' => '2025-06-15',
            'credential_id' => 'AWS-DEV-2022-001',
            'description' => 'Certified for developing applications on AWS platform'
        ]);

        Certification::create([
            'person_id' => $person1->id,
            'name' => 'Google Cloud Professional Developer',
            'issuing_organization' => 'Google Cloud',
            'issue_date' => '2023-01-20',
            'expiry_date' => '2025-01-20',
            'credential_id' => 'GCP-DEV-2023-001',
            'description' => 'Professional developer certification for Google Cloud Platform'
        ]);

        // Person 2
        $person2 = Person::create([
            'name' => 'Jane Smith',
            'email' => 'jane@example.com',
            'phone' => '081234567891',
            'job_title' => 'Data Scientist',
            'company' => 'Analytics Corp',
            'city' => 'Surabaya',
            'bio' => 'Data scientist with expertise in machine learning and AI',
            'birth_date' => '1992-08-22'
        ]);

        // Jane's Education
        Education::create([
            'person_id' => $person2->id,
            'institution' => 'Universitas Gadjah Mada',
            'degree' => 'Bachelor of Science',
            'major' => 'Mathematics',
            'start_year' => 2010,
            'end_year' => 2014,
            'gpa' => 3.90,
            'description' => 'Strong foundation in statistics and mathematical modeling'
        ]);

        Education::create([
            'person_id' => $person2->id,
            'institution' => 'Stanford University',
            'degree' => 'Master of Science',
            'major' => 'Data Science',
            'start_year' => 2015,
            'end_year' => 2017,
            'gpa' => 3.95,
            'description' => 'Advanced studies in machine learning and big data analytics'
        ]);

        // Jane's Certifications
        Certification::create([
            'person_id' => $person2->id,
            'name' => 'TensorFlow Developer Certificate',
            'issuing_organization' => 'Google',
            'issue_date' => '2021-09-10',
            'expiry_date' => '2024-09-10',
            'credential_id' => 'TF-DEV-2021-001',
            'description' => 'Certified TensorFlow developer for machine learning applications'
        ]);

        Certification::create([
            'person_id' => $person2->id,
            'name' => 'Microsoft Azure Data Scientist Associate',
            'issuing_organization' => 'Microsoft',
            'issue_date' => '2022-03-15',
            'expiry_date' => '2024-03-15',
            'credential_id' => 'AZ-DP-100-2022-001',
            'description' => 'Azure platform certification for data science and machine learning'
        ]);

        // Person 3
        $person3 = Person::create([
            'name' => 'Ahmad Rahman',
            'email' => 'ahmad@example.com',
            'phone' => '081234567892',
            'job_title' => 'Cybersecurity Analyst',
            'company' => 'SecureNet Solutions',
            'city' => 'Bandung',
            'bio' => 'Cybersecurity expert with focus on network security and penetration testing',
            'birth_date' => '1990-12-05'
        ]);

        // Ahmad's Education
        Education::create([
            'person_id' => $person3->id,
            'institution' => 'Institut Teknologi Bandung',
            'degree' => 'Bachelor of Engineering',
            'major' => 'Electrical Engineering',
            'start_year' => 2008,
            'end_year' => 2012,
            'gpa' => 3.65,
            'description' => 'Specialized in computer networks and telecommunications'
        ]);

        // Ahmad's Certifications
        Certification::create([
            'person_id' => $person3->id,
            'name' => 'CISSP - Certified Information Systems Security Professional',
            'issuing_organization' => '(ISC)² Security',
            'issue_date' => '2020-11-20',
            'expiry_date' => '2023-11-20',
            'credential_id' => 'CISSP-2020-001',
            'description' => 'Advanced certification in information security management'
        ]);

        Certification::create([
            'person_id' => $person3->id,
            'name' => 'Certified Ethical Hacker (CEH)',
            'issuing_organization' => 'EC-Council',
            'issue_date' => '2021-05-15',
            'expiry_date' => '2024-05-15',
            'credential_id' => 'CEH-2021-001',
            'description' => 'Ethical hacking and penetration testing certification'
        ]);
    }
}